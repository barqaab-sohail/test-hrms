@extends('layouts.master.master')
@section('title', 'BARQAAB HR')


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
	
		<div class="card">
			<div class="card-body">
				<div class="container">
	        
	          	<!-- Button trigger modal -->
	          	<button type="button" class="btn btn-info" data-toggle="modal" data-target="#taskModal"> 
	            Add New Task
	          	</button>
	          
	          	<!-- Modeal Include-->
	          	@include('hr.task.modal')
	          	@include('hr.task.editModal')
	  
	      		</div>
			
			<div id="append_data" class="table-responsive m-t-40">

			</div>
			
			


		</div>


@stop
  @push('scripts')
  <script>
  function load_data(){
  	var loadUrl = "{{route('task.index')}}";
    	    $("#append_data").load(loadUrl, function (){
    	    	$('#myTable').DataTable({
    	 	 	stateSave: false,
    	 	 	"order": [[ 2, "asc" ]],
    	 	 	"destroy": true,
    	 	 	"columnDefs": [
    				{ "width": "30%", "targets": 0, },
    				{"targets": "_all", "className": "dt-center"}
 				 ],

                dom: 'lfrtip'
               
				});
    	    });
  }

  	$(document).ready(function () {
        
	        load_data();
   	
    });

  	//Store Task
    $('#taskModal').on('shown.bs.modal', function () {
    	$('#task_detail').trigger('focus');
    	$('.btn-prevent-multiple-submits').attr('disabled',false);
        $('.spinner').hide();

    	$(document).one("submit", function(e){
		e.preventDefault();
		
				$.ajaxSetup({
	          		headers: {
	              	'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          		}
      			});
				var url ="{!!route('task.store')!!}";

      			$.ajax({
		        url: url, //this is the submit URL
		            type: 'POST', //or POST
		            data: $('#taskFrom').serialize(),

		            	success: function(data){
		            		if (data =="OK"){
		            			
		            			load_data();

		            			$('#taskFrom').trigger("reset");
		            			$('#taskModal').modal('toggle');

        						$('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data Sucessfuly Saved</strong></div>');

		            		}else{

		            			$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data is not  Saved</strong></div>');

		            			$('#taskFrom').trigger("reset");
		            			$('#taskModal').modal('toggle');
		            			
		            		}
			        	},

			        	error: function (request, status, error) {
                				json = $.parseJSON(request.responseText);
                				$.each(json.errors, function(key, value){
                                
                				$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>'+value+'</strong></div>');
                			});
            			}//end error

	        		});//end ajax

		    	});//end submis
    	

    });

    

    //Update Tasks through AJAX
   		$(document).on("click", 'a[id^=edit]', function(){
		        
		        var updateId = $(this).attr('id');
		        var arr = updateId.split('=');
		        var id = arr[1];
		
				$('#editTaskModal').modal('toggle');
    			$('.btn-prevent-multiple-submits').attr('disabled',false);
        		$('.spinner').hide();
        		var task_detail = $('a[id^=edit][id$='+id+']').closest('tr').find('td:first').text();
				var completion_date = $('a[id^=edit][id$='+id+']').closest('tr').find('td:nth-child(2)').text();
				$('#edit_task_detail').val(task_detail);
				$('#edit_completion_date').val(completion_date);

				var url = "{{url('hrms/task')}}"+"/"+id;
				$('#editTaskFrom').attr('action',url);

        		$('#editTaskFrom').one("submit", function(e){
				e.preventDefault();
			
				
				$.ajaxSetup({
	          		headers: {
	              	'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          		}
      			});
				
	      			$.ajax({
			        url: url, //this is the submit URL
			            type: 'PUT', //or POST
			            data: $('#editTaskFrom').serialize(),

		            	success: function(data){
		            		if (data =="OK"){
		            			
		            			load_data();

		            			$('#editTaskFrom').trigger("reset");
		            			$('#editTaskModal').modal('toggle');

        						$('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data Sucessfuly Saved</strong></div>');

		            		}else{

		            			$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data is not  Saved</strong></div>');

		            			$('#editTaskFrom').trigger("reset");
		            			$('#editTaskModal').modal('toggle');
		            			
		            		}
			        	},

			        	error: function (request, status, error) {
                				json = $.parseJSON(request.responseText);
                				$.each(json.errors, function(key, value){
                                
                				$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>'+value+'</strong></div>');
                			});
            			}//end error

	        		});//end ajax

      			});//end submis
	   	

		});//end click
   
   //Update Task Status through AJAX
   		$(document).on("click", 'a[id^=update]', function(e){
		        e.preventDefault();
		    if (confirm('Are you sure to change status?')) {
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
		            
		            	success: function(data){
		            		
		            		if (data =="OK"){
		            			
		            			$('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data Updated Sucessfully</strong></div>');
		            			$('html,body').animate({scrollTop:0},0);

		            				load_data();
		            		}else{

		            			$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data is not Updated Sucessfully</strong></div>');
		            				$('html,body').animate({scrollTop:0},0);
		            		}
			        	}
	        		});
 				}//end confirmation
		    }); //end Change Status

 		//Ajax Delete Data
	 		$(document).on("click", 'a[id^=delete]', function(event) {
		        event.preventDefault();

		    if (confirm('Are you sure to delete this record?')) {
		        var deleteId = $(this).attr('id');
		        var arr = deleteId.split('=');
		        var id = arr[1];
		        var url = "{{url('hrms/task')}}"+"/"+id;
		        		       	     	
	     			$.ajaxSetup({
	          			headers: {
	              		'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          			}
      				});

      				$.ajax({
		            url: url, //this is the submit URL
		            type: 'DELETE', //or POST
		           
		            	success: function(data){
		            		if (data =="OK"){
		            					            			
		            			load_data();


        						$('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data Sucessfuly Deleted</strong></div>');

		            		}else{

		            			$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data is not  Deleted</strong></div>');
		            			
		            		}
			        	},

			        	error: function (request, status, error) {
                				json = $.parseJSON(request.responseText);
                				$.each(json.errors, function(key, value){
                                
                				$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>'+value+'</strong></div>');
                			});
            			}

	        		});


      			}//end confirmation

		    });

  </script>

  @endpush

@section('footer')

@stop