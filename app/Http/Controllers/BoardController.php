<?php

namespace App\Http\Controllers;

use App\Board;
use Auth;
use App\User;

use Illuminate\Http\Request;

class BoardController extends Controller
{
    public function index()
    {

       $user = User::all();
       $board = Board::orderBy('id','desc')->paginate(20);
       return view('boards.index',compact('board','user','links'));
    }

    public function show($id)
    {

        $board = Board::findorfail($id);
//
        return view('boards.show',compact('board'));

    }
    public function create()
    {
        return view('boards.create');

    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        $this->validate($request,['title'=>'required','body'=>'required','image'=>'required']);
        $input=$request->all();
        $path=$request->file('image')->store('uploads','public');
        $input['image']=$path;
        Board::create($input);
        return redirect('board');
    }

}

