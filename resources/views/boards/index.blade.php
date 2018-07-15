<?php
use App\User;


?>
@extends('layouts.app')

@section('content')

    <div class="container" style="align-content: center">
        <h1>Boards</h1>
        <div class="col-sm-12">
        @foreach($board as $value)

            <item class="col-sm-4" style="display: block; width:300px;height: 500px; alignment: center;">

                <div>
                    <?php $name=User::find($value->user_id) ?>
                    <h1>
                        <a href="{{action('BoardController@show',[$value->id])}}">{{$value->title}}</a>
                    </h1>

                    <a href="{{action('HomeController@show',[$name->id])}}"><small>{{$name->name}}</small></a>
                    @isset($value->image)
                        <img src="{{asset('/storage/' . $value->image)}}" alt="Picture not found" class="img-responsive rounded center-block" style="max-height: 200px">
                    @endisset
                        <article class="text-truncate" style="max-height: 150px; overflow: hidden">{{$value->body}}</article>


                </div>

             </item>

            @endforeach

        </div>
       {{$board->links()}}
    </div>


    @stop
