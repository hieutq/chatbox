<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Chat;
use Auth;
class ChatController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $chats = Chat::select('chats.id','chats.msg','chats.check','users.name')
            ->leftjoin('users','id_user','=','users.id')
            ->get();
       return view('home',['chats'=>$chats]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function ajax()
    {

        ini_set('max_execution_time',7200);
        while (Chat::where('check','=',0)->count() < 1) {
            usleep(1000);
        }
        if (Chat::where('check','=',0)->count() > 0) {
            $data = Chat::select('chats.id','chats.msg','chats.check','users.name')
            ->leftjoin('users','id_user','=','users.id')
            ->where('chats.check','=',0)->first();
            $id = $data->id;
            $edit = Chat::find($id);
            $edit->check = 1;
            $edit->save();
            return response()->json([
                'msg' => $data->msg,
                'name' => $data->name,
            ]);
        }
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $id = Auth::user()->id;
        $chat = new Chat;
        $chat->msg = $request->input('msg');
        $chat->id_user = $id;
        $chat->check = 0;
        $chat->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
