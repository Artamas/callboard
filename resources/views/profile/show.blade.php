<?php use App\User; ?>
@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>{{$profile->name}}</h1>
        <label>Телефон : {{

        $profile->tel
        }}</label>
        <br>
        <label>О себе : {{$profile->about}}</label>

        {!! Form::open(['url'=>"profile/show/$profile->id"]) !!}

        {!! Form::label('body','Comment:') !!}
        {!! Form::textarea('body',null,['class'=>'form-control']) !!}

        {!! Form::label('rate','rate 1-5:') !!}
        {!! Form::text('rate',null,['class'=>'form-control']) !!}

        <?php $id=Auth::user()->id; ?>
        {!! Form::hidden('author_id',$id) !!}
        {!! Form::hidden('user_id',$profile->id) !!}

        <br>
        <div class="form-group">
            {!! Form::submit('Add comment',['class'=>'form-control btn btn-primary']) !!}
        </div>


        {!! Form::close() !!}

        @if($errors->any())
            <ul class="alert alert-danger">

                Ошибка. Заполните все поля. Рейтинг 1-5.

            </ul>

        @endif

        @foreach($profile->comments as $comment)
            <hr>
        <div class="container">
            <small>{{$author = User::find($comment->author_id)->name}}</small>
            <article style="font-weight: bold;">
                {{$comment->body}}
                <strong style="float: right; color: red;">Rating :{{ $comment->rate}}</strong>
            </article>
        </div>

            <hr>
            @endforeach



    </div>



@stop
