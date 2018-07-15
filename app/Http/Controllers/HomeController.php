<?php

namespace App\Http\Controllers;

use App\User;
use Auth;
use App\Comment;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
//        $data = [
//            'title' => 'Объявления',
//            'pagetitle' => 'Доска объявлений'
//        ];
//        return view('pages.messages.index');
        return view('home');
    }

    public function store(Request $request)
    {

        $input=$request->all();
        $this->validate($request,['tel'=>'required','about'=>'required']);
        $tmp= User::find(Auth::user()->id);
       // $profile = User::findorfail(Auth::user()->id);
        $tmp->toArray();
        $tmp['tel']=$input['tel'];
        $tmp['about']=$input['about'];
        $tmp->save();

        return redirect()->action('HomeController@show' , ['id' => Auth::user()->id]);
    }
    public function show($id)
    {
        $profile = User::findorfail($id);
        return view('profile.show',compact('profile'));
    }
    public function comment(Request $request,$id)
    {
        $input=$request->all();
        $this->validate($request,['body'=>'required','rate'=>'required|max:1|regex:/[1-5]{1}/']);
        Comment::create($input);
        $profile = User::findorfail($id);
        return view('profile.show',compact('profile'));
    }

}
