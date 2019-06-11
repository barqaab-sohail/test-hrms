@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Dashboard</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
		
		
	</ol>
@stop
@section('content')
	<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>
			<h4 class="card-title">Salaries</h4>
			-->
			
			<h1 class="card-subtitle">{{Auth::User()->employee->first_name." ".Auth::User()->employee->last_name}} Welcome to HRMS</h1>
						
			
		</div>
	</div>

@stop