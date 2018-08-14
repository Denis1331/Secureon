<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ValidationController extends Controller
{


	private $array = [
						['Ip_address' => '111.111.111.111', 'mav_address' => 'e4:R4:u7:6t:5r'],
						['Ip_address' => '151.15.16.161', 'mav_address' => 'e4:F4:u7:6t:5r'],
						['Ip_address' => '167.141.111.141', 'mav_address' => 'e4:R5:u7:6t:5r'],
						['Ip_address' => '111.111.111.131', 'mav_address' => 'Z4:R4:u7:6t:5r'],

	]; 

    public function index(Request $request)
    {
    	foreach ($this->array as $arr) {
    		if($arr['Ip_address'] == $request->input('ip') && $arr['mav_address'] == $request->input('mac')){
    			$success = true;
    		}
    	}

    return response()->json(["success" => isset($success) ? true : false]);
    } 


}
