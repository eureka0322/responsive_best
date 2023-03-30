<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\SendPushNotification;

use PayPal\Rest\ApiContext;
use PayPal\Auth\OAuthTokenCredential;
use PayPal\Api\Amount;
use PayPal\Api\Details;
use PayPal\Api\Item;
use PayPal\Api\ItemList;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\RedirectUrls;
use PayPal\Api\ExecutePayment;
use PayPal\Api\PaymentExecution;
use PayPal\Api\Transaction;
use PayPal\Exception\PayPalConnectionException;

use Stripe\Charge;
use Stripe\Stripe;
use Stripe\StripeInvalidRequestError;

use Auth;
use Setting;
use Exception;
use Session;

use App\Card;
use App\User;
use App\UserRequests;
use App\UserRequestPayment;

class PaymentController extends Controller
{

   
    private $_api_context;

 
    public function __construct()
    {
       
        // setup PayPal api context
        $paypal_conf = config('paypal');
        
        $this->_api_context = new ApiContext(new OAuthTokenCredential($paypal_conf['client_id'], $paypal_conf['secret']));
        $this->_api_context->setConfig($paypal_conf['settings']);
   
    }


    public function paypal(Request $request)
    {
  
        $this->validate($request, [
                'request_id' => 'required|exists:user_request_payments,request_id|exists:user_requests,id,paid,0,user_id,'.Auth::user()->id
            ]);


        $UserRequest = UserRequests::find($request->request_id);

        if($UserRequest->payment_mode == 'PAYPAL') {

            $RequestPayment = UserRequestPayment::where('request_id',$request->request_id)->first(); 

            $total = $RequestPayment->total;

            $user = User::find(Auth::user()->id);

            $RequestPayment->payment_mode = 'PAYPAL';
            $RequestPayment->save();

            $item = new Item();
            $item->setName(Setting::get('site_title')) // item name
                   ->setCurrency('USD')
                   ->setQuantity('1')
                   ->setPrice($total);
           
            $payer = new Payer();
            $payer->setPaymentMethod('paypal');

            // add item to list
            $item_list = new ItemList();
            $item_list->setItems(array($item));
            $total = $total;
            $details = new Details();
            $details->setShipping('0.00')
                ->setTax('0.00')
                ->setSubtotal($total);


            $amount = new Amount();
            $amount->setCurrency('USD')
                ->setTotal($total)
              ->setDetails($details);

            $transaction = new Transaction();
            $transaction->setAmount($amount)
                ->setItemList($item_list)
                ->setDescription($request->request_id);

            $redirect_urls = new RedirectUrls();
             $redirect_urls->setReturnUrl(url('/paypalstatus'))
                           ->setCancelUrl(url('/paypalstatus'));

            $payment = new Payment();
            $payment->setIntent('Sale')
                ->setPayer($payer)
                ->setRedirectUrls($redirect_urls)
                ->setTransactions(array($transaction));

            try {
              $payment->create($this->_api_context);
            } catch (\PayPal\Exception\PayPalConnectionException $ex) {
                return redirect('dashboard')->with('flash_error',$ex->getMessage());
            }

            foreach($payment->getLinks() as $link) {
                if($link->getRel() == 'approval_url') {
                    $redirect_url = $link->getHref();
                    break;
                }
            }

            if(isset($redirect_url)) {
                $response_array = array('success' => true);       
                return redirect()->away($redirect_url);
            }

            return response()->json(Helper::null_safe($response_array) , 200);
        }
                    
    }
    

    public function getPaypalStatus(Request $request)
    {
        if (empty($request->PayerID) || empty($request->token)) {
          return redirect('dashboard')->with('flash_error','Payment Failed!!');
        }
     
        $payment = Payment::get($request->paymentId, $this->_api_context);
     
        $execution = new PaymentExecution();
        $execution->setPayerId($request->PayerID);
     
        $result = $payment->execute($execution, $this->_api_context);
     
        if ($result->getState() == 'approved') {
            $request_id = $result->getTransactions()[0]->getDescription();

            try {
              $UserRequest = UserRequests::find($request_id);

              $RequestPayment = UserRequestPayment::where('request_id',$request_id)->first();
              $RequestPayment->payment_id = $request->paymentId;
              $RequestPayment->payment_mode = 'PAYPAL';
              $RequestPayment->save();

              $UserRequest->paid = 1;
              $UserRequest->status = 'COMPLETED';
              $UserRequest->save();

              return redirect('dashboard')->with('flash_success','Payment Successful!!');

            } catch(Exception $e) {
              return back()->with('flash_error', $e->getMessage());
            }
       
        } else {
          return redirect('dashboard')->with('flash_error','Payment Failed!!');
        }
           
    }

    public function paypal_api(Request $request)
    {
        if ($request->state == 'approved') {

            try {
              $UserRequest = UserRequests::find($request->request_id);

              $RequestPayment = UserRequestPayment::where('request_id',$request->request_id)->first();
              $RequestPayment->payment_id = $request->paymentId;
              $RequestPayment->payment_mode = 'PAYPAL';
              $RequestPayment->save();

              $UserRequest->paid = 1;
              $UserRequest->status = 'COMPLETED';
              $UserRequest->save();

              return response()->json(['message' => trans('api.paid')]);

            } catch(Exception $e) {
              return response()->json(['error' => $e->getMessage()], 500);
            }
       
        } else {
          return response()->json(['error' => 'Payment Failed!!'], 500);
        }
           
    }

       /**
     * payment for user.
     *
     * @return \Illuminate\Http\Response
     */
    public function payment(Request $request)
    {
        $this->validate($request, [
                'request_id' => 'required|exists:user_request_payments,request_id|exists:user_requests,id,paid,0,user_id,'.Auth::user()->id
            ]);


        $UserRequest = UserRequests::find($request->request_id);

        if($UserRequest->payment_mode == 'CARD') {

            $RequestPayment = UserRequestPayment::where('request_id',$request->request_id)->first(); 

            $StripeCharge = $RequestPayment->total * 100;

            try {

                $Card = Card::where('user_id',Auth::user()->id)->where('is_default',1)->first();

                Stripe::setApiKey(Setting::get('stripe_secret_key'));

                $Charge = Charge::create(array(
                      "amount" => $StripeCharge,
                      "currency" => "usd",
                      "customer" => Auth::user()->stripe_cust_id,
                      "card" => $Card->card_id,
                      "description" => "Payment Charge for ".Auth::user()->email,
                      "receipt_email" => Auth::user()->email
                    ));

                $RequestPayment->payment_id = $Charge["id"];
                $RequestPayment->payment_mode = 'CARD';
                $RequestPayment->save();

                $UserRequest->paid = 1;
                $UserRequest->status = 'COMPLETED';
                $UserRequest->save();

                if($request->ajax()) {
                   return response()->json(['message' => trans('api.paid')]); 
                } else {
                    return redirect('dashboard')->with('flash_success','Paid');
                }

            } catch(StripeInvalidRequestError $e){
                if($request->ajax()){
                    return response()->json(['error' => $e->getMessage()], 500);
                } else {
                    return back()->with('flash_error', $e->getMessage());
                }
            } catch(Exception $e) {
                if($request->ajax()){
                    return response()->json(['error' => $e->getMessage()], 500);
                } else {
                    return back()->with('flash_error', $e->getMessage());
                }
            }
        }
    }


    /**
     * add wallet money for user.
     *
     * @return \Illuminate\Http\Response
     */
    public function add_money(Request $request){

        $this->validate($request, [
                'amount' => 'required|integer',
                'card_id' => 'required|exists:cards,card_id,user_id,'.Auth::user()->id
            ]);

        try{
            
            $StripeWalletCharge = $request->amount * 100;

            Stripe::setApiKey(Setting::get('stripe_secret_key'));

            $Charge = Charge::create(array(
                  "amount" => $StripeWalletCharge,
                  "currency" => "usd",
                  "customer" => Auth::user()->stripe_cust_id,
                  "card" => $request->card_id,
                  "description" => "Adding Money for ".Auth::user()->email,
                  "receipt_email" => Auth::user()->email
                ));

            $update_user = User::find(Auth::user()->id);
            $update_user->wallet_balance += $request->amount;
            $update_user->save();

            Card::where('user_id',Auth::user()->id)->update(['is_default' => 0]);
            Card::where('card_id',$request->card_id)->update(['is_default' => 1]);

            //sending push on adding wallet money
            (new SendPushNotification)->WalletMoney(Auth::user()->id,currency($request->amount));

            if($request->ajax()){
                return response()->json(['message' => currency($request->amount).trans('api.added_to_your_wallet'), 'user' => $update_user]); 
            } else {
                return redirect('wallet')->with('flash_success',currency($request->amount).' added to your wallet');
            }

        } catch(StripeInvalidRequestError $e) {
            if($request->ajax()){
                 return response()->json(['error' => $e->getMessage()], 500);
            }else{
                return back()->with('flash_error',$e->getMessage());
            }
        } catch(Exception $e) {
            if($request->ajax()) {
                return response()->json(['error' => $e->getMessage()], 500);
            } else {
                return back()->with('flash_error', $e->getMessage());
            }
        }
    }
}
