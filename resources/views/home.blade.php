@extends('layouts.app')

@section('head')
    <link rel="stylesheet" href="{{url('public/css/bootstrap.min.css')}}">
    <script src="{{url('public/js/jquery.min.js')}}"></script>
    <style>
        .alert {
            padding: 0 !important;
        }
        .img {
            background-image: url('{{url('images/bg.jpg')}}');
            border-radius: 5px;
        }
        .chat-box {
            /*border-width : thin;
            border-style: solid ;*/
            border-radius: 4px;
            width: 100%;
            height: 500px;
            overflow: scroll;
        }
    </style>
    <meta content="{{URL::asset('')}}" name="website" />
    <script>

            $(document).on('keydown','.send',function(e){
                var text = $(this).val();
                var element = $(this);
                var url = 'add';
                var link=$('meta[name="website"]').attr('content');
                if (!text=='' && e.keyCode == 13 && !e.shiftKey) 
                {

                    $.ajax({
                        url:link+url,
                        type: 'post',
                        data:{_token:'{{csrf_token()}}',msg:text},
                        success: function(data) 
                        {
                            setTimeout(liveChat,1000);
                        },

                    });
                    element.val('');
                }
            });
            $(function(){
                liveChat();
            });
            function liveChat() {
                var link=$('meta[name="website"]').attr('content');
                var url = 'ajax';
                $.ajax({
                    url:link+url,
                    type:'get',
                    data:{_token:'{{csrf_token()}}'},
                    success: function(data) 
                    {
                        $('.chat-box').append('<div class="alert alert-default">'+data['name']+' : '+data['msg']+'</div>');
                        setTimeout(liveChat,1000);
                    },
                    error:function()
                    {
                        setTimeout(liveChat,1000);
                    }
                });
            }
            
    </script>
@endsection

@section('content')
<div class="container">
        <div class="row img"><h1>Chatting...</h1></div>
        <div class="row">
            <div class="chat-box" >
                    @foreach($chats as $db)
                        <div class="alert alert-default">{{$db->name}} : {{$db->msg}}</div>
                    @endforeach
            </div>
            
<!--            <div class="chat-box">
            
            </div> -->
            
            
        </div>
        <div class="row">
                <input type="text" class="form-control send" placeholder="Enter your massages ...">
            </div>
    </div>
@endsection

@section('footer')
    
@endsection
