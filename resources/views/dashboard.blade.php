@extends('layouts.master.master')

@section('Heading')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.2.7/fullcalendar.min.css"/>
 


	<h3 class="text-themecolor">Dashboard</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
		
		
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
			
			<h2 >{{Auth::User()->employee->first_name." ".Auth::User()->employee->last_name}} Welcome to HRMS</h2>
						
			
		</div>
	</div>
	@can('admin', Auth::user())
		<div class="card">
			<div class="card-body">
				<div class="container">
	        
	          	<!-- Button trigger modal -->
	          	<button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal">
	            Add New Task
	          	</button>
	          
	          	<!-- Modeal Include-->
	          	@include('hr.task.modal')
	  
	      		</div>
			</div>
			@if($taskIds->count()!=0)
				@include('hr.task.list')
			@endif


	
		</div>

	@endcan

@stop
  @push('scripts')
  <script>
    $('#myModal').on('shown.bs.modal', function () {
      $('#myInput').trigger('focus')
    })


    $('#taskFrom').submit(function(){

     

    });
  </script>

  @endpush

@section('footer')

@stop