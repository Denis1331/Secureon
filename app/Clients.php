<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Clients extends Model
{
    public $fillable = [
    	'name',
    	'phone',
    	'email',
    	'ip_address',
    	'mac_address',
    ];

}
