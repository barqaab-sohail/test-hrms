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


   //Update Task Status through AJAX
        $('a[id^=update]').click(function(e){
		        e.preventDefault();
		        var updateId = $(this).attr('id');
		        var arr = updateId.split('=');
		        var id = arr[1];
		       
		        var url = "{{url('hrms/task')}}"+"/"+id;
		        // alert(url);
		        // return;
		        
				//alert(email);	
		        $.ajaxSetup({
	          			headers: {
	              		'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          			}
      				});
      				
	     			$.ajax({
		            url: url, //this is the submit URL
		            type: 'PUT', //or POST
		            data: {id:id},

		            	success: function(data){
		            		
		            		if (data =="OK"){
		            			
		            			$('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>User Right Updated Sucessfully</strong></div>');
		            			$('html,body').animate({scrollTop:0},0);

		            		}else{

		            			$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>User Right is not Updated Sucessfully</strong></div>');
		            				$('html,body').animate({scrollTop:0},0);
		            		}
			        	}
	        		});
 
		    });
  </script>

  @endpush

@section('footer')

@stop