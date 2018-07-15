@extends('layouts.app')

@section('content')

<div class="container">
    <h1>Write new board</h1>
    <hr/>


    {!! Form::open(['url'=>'board','enctype'=>'multipart/form-data']) !!}

    {!! Form::label('title','Title:') !!}
    {!! Form::text('title',null,['class'=>'form-control']) !!}

    {!! Form::label('body','body:') !!}
    {!! Form::textarea('body',null,['class'=>'form-control']) !!}

    {!! Form::label('image','image:') !!}
    {!! Form::file('image') !!}
    <?php $id=Auth::user()->id; ?>
    {!! Form::hidden('user_id',$id) !!}

    <br>
    <div class="form-group">
        {!! Form::submit('Add advertisment',['class'=>'form-control btn btn-primary']) !!}
    </div>


    {!! Form::close() !!}

    @if($errors->any())
        <ul class="alert alert-danger">

            Ошибка. Заполните все поля.

        </ul>

        @endif

</div>
@stop
