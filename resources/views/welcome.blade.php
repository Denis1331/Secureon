@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Clients form</div>

                    <div class="panel-body">
                        <form action="{{ route('clients') }}" method="post" class="form-horizontal">
                                {{ csrf_field() }}
                                <div class="form-group">
                                    <label for="name">
                                        Name
                                    </label>
                                    <input class="form-control" type="text" name="name" id="Name">
                                </div><div class="form-group">
                                    <label for="name">
                                        Phone
                                    </label>
                                    <input class="form-control" type="text" name="phone" id="phone">
                                </div>
                                <div class="form-group">
                                    <label for="name">
                                        Email
                                    </label>
                                    <input class="form-control" type="text" name="email" id="email">
                                </div>
                                <div class="form-group">
                                    <label for="name">
                                        IP address
                                    </label>
                                    <input class="form-control" type="text" name="ip_address" id="ip_address">
                                </div>
                                <div class="form-group">
                                    <label for="name">
                                        Mac address
                                    </label>
                                    <input class="form-control" type="text" name="mac_address" id="mac_address">
                                </div>
                                @if ($errors->any())
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                            <div class="form-group">
                                <button type="sumbit" class="btn btn-default">Send</button>
                            </div>
                            <div class="ip_val"></div>
                        </form>
                    </div>
             </div>   
        </div>
    </div>
    <div class="col-md-10 col-md-offset-2">
        <div class="panel panel-default">
             <table class="table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Ip address</th>
                            <th>Mac address</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($clients as $client)
                        <tr>
                            <th>{{ $client->name }}</th>
                            <th>{{ $client->phone }}</th>
                            <th>{{ $client->email }}</th>
                            <th>{{ $client->ip_address }}</th>
                            <th>{{ $client->mac_address }}</th>
                        </tr>
                        @endforeach
                    </tbody>
             </table>
             {{ $clients->links() }}
        </div>
     </div>
</div>
@endsection