<?php

namespace App\Http\Controllers;

use App\Clients;
use Illuminate\Http\Request;

class ClientsController extends Controller
{
    public function index()
    {
    	$clients = Clients::orderBy('created_at', 'desc')->paginate(5);
        
    	return view('welcome', compact('clients'));
    } 

    public function store(Request $request)
    {
          $this->validate($request, [
                'name' => 'required|max:20',
                'phone' => 'required',
                'email' => 'bail|required|email|unique:clients|max:255',
                'ip_address' => 'required|ip',
                'mac_address' => 'required|max:20',
            ]);

         
    	$clients = Clients::create($request->except('_token'));

    	return redirect('/');
    }

}
