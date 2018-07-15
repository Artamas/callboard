@extends('layouts.app')

@section('content')
<div class="container">

    @isset($board->image)
        <img src="{{asset('/storage/' . $board->image)}}" alt="Picture not found" class="img-responsive">
    @endisset
    <h1>{{$board->title}}</h1>
    <article>{{$board->body}}</article>

        <hr/>
        <br>
        <br>


</div>



@stop
