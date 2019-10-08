@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Initial Leave Balance</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
		
	
	</ol>
@stop
@section('content')
	<div class="card">
		<div class="card-body">
			
		<div class="container">
   					<h3 align="center">Add Initial Balance</h3>

				   	<form id="initialBalance" method="post" enctype="multipart/form-data" action="{{route('initialBalance.store')}}">
				    {{ csrf_field() }}
				    <div class="row">
		                                <!--/span-->
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-8">
		                                        	<label class="control-label text-right ">Name of Employee</label><span class="text_requried">*</span>
		                                        	<select id="employee_id" name="employee_id"  class="form-control selectTwo" required>
                                                        <option value=""></option>
                                                        @foreach($employees as $employee)
														<option value="{{$employee->id}}" {{(old("employee_id")==$employee->id? "selected" : "")}}>{{$employee->first_name." ".$employee->middle_name." ".$employee->last_name}}</option>
                                                        @endforeach
                                                      
                                                    </select>
		                                            
		                                        </div>
		                                        <div class="col-md-4">
		                                        	<label class="control-label text-right ">Leave Type</label><span class="text_requried">*</span>
		                                        	<select id="leave_type" name="leave_type_id"  class="form-control selectTwo" required>
                                                        <option value=""></option>
                                                        @foreach($leaveTypes as $leaveType)
														<option value="{{$leaveType->id}}" {{(old("leave_type_id")==$leaveType->name? "selected" : "")}}>{{$leaveType->name}}</option>
                                                        @endforeach
                                                      
                                                    </select>
		                                            
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-3">
		                                        	<label class="control-label text-right">Balance</label><span class="text_requried">*</span>
		                                             <input type="number" id="balance" name="balance" class="form-control prc" required>
		                                        </div>
		                                        <div class="col-md-9 date_input">
											   		<label class="control-label text-right">Effective Date</label><span class="text_requried">*</span>
		                                             <input type="text" id="effective_date" name="effective_date" class="form-control prc"  required readonly>
		                                             @can('entry', Auth::user())
		                                            <br>
		                                            <i class="fas fa-trash-alt text_requried"></i> 
		                                            @endcan
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <input type="text" id="id" name="id" value=""   class="form-control "  hidden>
		                             </div>
				   			<button type="submit" class="btn btn-success btn-prevent-multiple-submits">Save</button>
				   </form>
				   
		</div>

		<hr>
@if($initialLeaves->count()!=0)
			<h4 class="card-title">List of Initial Leave Balance</h4>
	
			<div id="append_data" class="table-responsive m-t-40">
				
				
			</div>
		
	@else
	<h4 class="card-title">No Initial Leave Balance Entered</h4>

	@endif


		</div>
	</div>
@push('scripts')
	<!-- This is data table -->
	<script src="{{asset('Massets/plugins/datatables/datatables.min.js')}}"></script>
	<!-- start - This is for export functionality only -->
	<script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
	<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
	<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
	<!-- end - This is for export functionality only -->
	<script>
       
 		$(document).ready(function () {
        
	        var loadUrl = "{{route('initialBalance.index')}}";
    	    $("#append_data").load(loadUrl, function (){
    	    	$('#myTable').DataTable({
    	 	 	stateSave: false,
                dom: 'lfrtip'
               
				});
    	    });
    	  
    	   

            

	 		$(document).on("click", 'a[id^=update]', function(event) {
    		
				event.preventDefault();
				var updateId = $(this).attr('id');
				var arr = updateId.split('=');
				var id = arr[1];

				var employeeName = $(this).closest('tr').find('td:nth-child(1)').text();
				var leaveType = $(this).closest('tr').find('td:nth-child(2)').text();
				var balance = $(this).closest('tr').find('td:nth-child(3)').text();
				var effectiveDate = $(this).closest('tr').find('td:nth-child(4)').text();

				
				
				$("#leave_type option").filter(function() {
  				//may want to use $.trim in here
  				return $(this).text() == leaveType;
				}).prop('selected', true);

				$("#employee_id option").filter(function() {
  				//may want to use $.trim in here
  				return $(this).text() == employeeName;
				}).prop('selected', true);

				$('#leave_type, #employee_id').select2({
            		width: "100%",
            		theme: "classic",
        		}).trigger('change');							        

				$("#balance").val(balance);
				$("#effective_date").val(effectiveDate);
				$("#id").val(id);

				$('html,body').animate({scrollTop:0},0);
				$(".date_input").find('i').show();
								        
			});

		//Ajax Save Data
	 		$("#initialBalance").submit(function(e){
		        e.preventDefault();
		        var url="{!!route('initialBalance.store')!!}";
	     	
	     			$.ajaxSetup({
	          			headers: {
	              		'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          			}
      				});

      				$.ajax({
		            url: url, //this is the submit URL
		            type: 'POST', //or POST
		            data: $('#initialBalance').serialize(),

		            	success: function(data){
		            		if (data =="OK"){
		            			
		            			var loadUrl = "{{route('initialBalance.index')}}";

		            			$("#append_data").load(loadUrl, function (){
    	    						
    	    						$('#myTable').DataTable({
    	 	 						
    	 	 							destroy: true,
    	 	 							stateSave: false,
              							dom: 'lfrtip'
               
									});
    	    					});

		            			$('#initialBalance').trigger("reset");
		            			$(".date_input").find('i').hide();
		            			$('#leave_type, #employee_id').select2({
            					width: "100%",
            					theme: "classic",
        						}).trigger('change');	

        						$('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data Sucessfuly Saved</strong></div>');

		            		}else{

		            			$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data is not  Saved</strong></div>');
		            			
		            		}
			        	},

			        	error: function (request, status, error) {
                				json = $.parseJSON(request.responseText);
                				$.each(json.errors, function(key, value){
                                
                				$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>'+value+'</strong></div>');
                			});
            			}

	        		});

		    	});
			});



 		//Ajax Dete Data
	 		$(document).on("click", 'a[id^=delete]', function(event) {
		        event.preventDefault();

		    if (confirm('Are you sure to delete this record?')) {
		        var updateId = $(this).attr('id');
		        var arr = updateId.split('=');
		        var id = arr[1];
		        var url = "{{url('leave/initialBalance')}}"+"/"+id;
		        		       	     	
	     			$.ajaxSetup({
	          			headers: {
	              		'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          			}
      				});

      				$.ajax({
		            url: url, //this is the submit URL
		            type: 'POST', //or POST
		           
		            	success: function(data){
		            		if (data =="OK"){
		            			
		            			var loadUrl = "{{route('initialBalance.index')}}";

		            			$("#append_data").load(loadUrl, function (){
    	    						
    	    						$('#myTable').DataTable({
    	 	 						
    	 	 							destroy: true,
    	 	 							stateSave: false,
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
@stop