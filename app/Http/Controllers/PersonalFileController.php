<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\document;

class PersonalFileController extends Controller
{
    
public function __construct()
{
        $this->middleware('auth');
        $this->middleware('updation')->only('index');
}


public function index (){
    $employees = employee::all()->where('employee_status','0');
    $documents = document::all();
    return view('hr.personalFiles.index', compact('employees','documents'));
}

}
