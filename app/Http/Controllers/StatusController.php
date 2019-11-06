<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
class StatusController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function edit($id){

       $employee = employee::find($id);
       return view ('hr.status.editStatus', compact('employee'));
    }
}
