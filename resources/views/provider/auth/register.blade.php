@extends('provider.layout.auth')

@section('content')
<div class="col-md-12">
    <a class="log-blk-btn" href="{{ url('/provider/login') }}">ALREADY REGISTERED?</a>
    <h3>Sign In</h3>
</div>

<div class="col-md-12">
    <form class="form-horizontal" role="form" method="POST" action="{{ url('/provider/register') }}">
        {{ csrf_field() }}

        <input id="name" type="text" class="form-control" name="first_name" value="{{ old('first_name') }}" placeholder="First Name" autofocus>

        @if ($errors->has('first_name'))
            <span class="help-block">
                <strong>{{ $errors->first('first_name') }}</strong>
            </span>
        @endif

        <input id="name" type="text" class="form-control" name="last_name" value="{{ old('last_name') }}" placeholder="Last Name">

        @if ($errors->has('last_name'))
            <span class="help-block">
                <strong>{{ $errors->first('last_name') }}</strong>
            </span>
        @endif

        <input id="mobile" type="mobile" class="form-control" name="mobile" value="{{ old('mobile') }}" placeholder="Mobile">

        @if ($errors->has('mobile'))
            <span class="help-block">
                <strong>{{ $errors->first('mobile') }}</strong>
            </span>
        @endif

        <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="E-Mail Address">

        @if ($errors->has('email'))
            <span class="help-block">
                <strong>{{ $errors->first('email') }}</strong>
            </span>
        @endif

        <input id="password" type="password" class="form-control" name="password" placeholder="Password">

        @if ($errors->has('password'))
            <span class="help-block">
                <strong>{{ $errors->first('password') }}</strong>
            </span>
        @endif

        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Confirm Password">

        @if ($errors->has('password_confirmation'))
            <span class="help-block">
                <strong>{{ $errors->first('password_confirmation') }}</strong>
            </span>
        @endif

        <select class="form-control" name="service_type" id="service_type">
            <option value="">Select Service</option>
            @foreach(get_all_service_types() as $type)
                <option value="{{$type->id}}">{{$type->name}}</option>
            @endforeach
        </select>

        @if ($errors->has('service_type'))
            <span class="help-block">
                <strong>{{ $errors->first('service_type') }}</strong>
            </span>
        @endif

        <input id="service-number" type="text" class="form-control" name="service_number" value="{{ old('service_number') }}" placeholder="Car Number">

        @if ($errors->has('service_number'))
            <span class="help-block">
                <strong>{{ $errors->first('service_number') }}</strong>
            </span>
        @endif

        <input id="service-model" type="text" class="form-control" name="service_model" value="{{ old('service_model') }}" placeholder="Car Model">

        @if ($errors->has('service_model'))
            <span class="help-block">
                <strong>{{ $errors->first('service_model') }}</strong>
            </span>
        @endif

        <button type="submit" class="log-teal-btn">
            Register
        </button>
    </form>
</div>
@endsection
