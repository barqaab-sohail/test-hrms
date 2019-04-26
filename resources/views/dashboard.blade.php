@extends('layouts.app2')


@section('content')



<div class="col-md-10 col-md-offset-1" style="background: red;">
	<h1> Mr. {{ Auth::user()->first_name ." ".Auth::user()->last_name }} WELCOME TO HRMS</h1> 
	<h1> You have {{Auth::user()->find(1)->role->name}} Rights</h1>
</div>







@endsection