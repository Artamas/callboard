@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Settings</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in, {{Auth::user()->name}}

                        {!! Form::open(['url'=>"home"]) !!}

                        {!! Form::label('tel','Phone:') !!}
                        {!! Form::text('tel',null,['class'=>'form-control']) !!}

                        {!! Form::label('about','About:') !!}
                        {!! Form::text('about',null,['class'=>'form-control']) !!}

                        <br>
                        <div class="form-group">
                            {!! Form::submit('Change information',['class'=>'form-control btn btn-primary']) !!}
                        </div>


                        {!! Form::close() !!}
                        @if($errors->any())
                            <ul class="alert alert-danger">

                                Ошибка. Заполните все поля.

                            </ul>

                        @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
