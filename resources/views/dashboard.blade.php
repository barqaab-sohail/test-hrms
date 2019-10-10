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

	@endcan

@stop
  @push('scripts')
  <script>

  	$(document).ready(function () {
        
	        var loadUrl = "{{route('task.index')}}";
    	    $("#append_data").load(loadUrl, function (){
    	    	$('#myTable').DataTable({
    	 	 	stateSave: false,
    	 	 	 "order": [[ 3, "desc" ]],
    	 	 	  "columnDefs": [
    				{ "width": "30%", "targets": 0 }
 				 ],
                dom: 'lfrtip'
               
				});
    	    });
   	
    });

    $('#taskModal').on('shown.bs.modal', function () {
     $('#task_detail').trigger('focus');
      $('#task_detail').val('ttt');

    });

    

    //Update Task Status through AJAX
   		$(document).on("click", 'a[id^=edit]', function(e){
		        e.preventDefault();
		         	var updateId = $(this).attr('id');
		        var arr = updateId.split('=');
		        var id = arr[1];
		
		$('#editTaskModal').on('shown.bs.modal', function () {
     	$('#edit_task_detail').trigger('focus');

		var task_detail = $('a[id^=edit][id$='+id+']').closest('tr').find('td:first').text();

		 $('#edit_task_detail').val(task_detail);	

   		 });

		      

		        
		});
   
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
		            			
		            			$('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>User Right Updated Sucessfully</strong></div>');
		            			$('html,body').animate({scrollTop:0},0);

		            				var loadUrl = "{{route('task.index')}}";
    	    						$("#append_data").load(loadUrl, function (){
    	    							$('#myTable').DataTable({
    	    							destroy: true,
    	 	 							stateSave: false,
    	 	 							"order": [[ 3, "desc" ]],
    	 	 							"columnDefs": [
    										{ "width": "30%", "targets": 0 }
 				 						],

                						dom: 'lfrtip'
               							});
    	    						});

		            		}else{

		            			$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>User Right is not Updated Sucessfully</strong></div>');
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
		            					            			
		            			var loadUrl = "{{route('task.index')}}";
		            			$("#append_data").load(loadUrl, function (){
    	    						
    	    						$('#myTable').DataTable({
    	 	 						
    	 	 							destroy: true,
    	 	 							stateSave: false,
    	 	 							 "order": [[ 3, "desc" ]],
    	 	 							 "columnDefs": [
    										{ "width": "30%", "targets": 0 }
 										 ],
              							dom: 'lfrtip'
               
									});
    	    					});


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