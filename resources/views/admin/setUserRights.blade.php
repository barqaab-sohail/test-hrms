@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Set User Rights</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
	</ol>
@stop
@section('content')
	<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h4 class="card-title">Set Uer Rights</h4>

		<from id="updateUserRights">
		 {{csrf_field()}}
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Employee Name</th>
						<th>CNIC</th>
						<th>Email</th>
						<th>User Right</th>
						<th>Actions</th>
						<th></th>

					</tr>
					</thead>
					<tbody>
						@foreach($employees as $employee)
							<tr>
								<td>{{$employee->first_name}} {{$employee->middle_name}} {{$employee->last_name}}</td>
								<td>{{$employee->cnic}}</td>
								<td>
									<input id="email{{$employee->id}}" value="{{isset($employee->user->email)? $employee->user->email:''}}"/>
								</td>
								<td> 
									<select  name="role_name"  id="role{{$employee->id}}" class="form-control" >
                                    		<option  value=""></option>
                                        @foreach($roles as $role)
											<option  value="{{$role->name}}"
											@if(!empty($employee->user->email))
												@if($role->name == $employee->user->getRoleNames()->first()) selected="selected"@endif
											@endif>{{$role->name}}</option>
										@endforeach
                                    </select>
                                </td>
								<td>
									<a class="btn btn-info btn-sm" id="update,id={{$employee->id}}" data-toggle="tooltip" title="Update"><i class="fas fa-save text-white"></i></a>
								</td>
								<td>
									<a class="btn btn-danger btn-sm" id="delete,id={{$employee->id}}" data-toggle="tooltip" title="Delete"><i class="fas fa-trash-alt text-white"></i></a>
								</td>	
							</tr>
						@endforeach
					
					</tbody>
				</table>
			</div>
		</from>
		</div>
	</div>
@push('scripts')
	
	
	<script>
        $(document).ready(function() {
            $('#myTable').DataTable({
                stateSave: false,
                scrollY:        "300px",
      			scrollX:        true,
        		scrollCollapse: true,
        		paging:         false,
                dom: 'Blfrti',
                buttons: [
                    {
                        extend: 'copyHtml5',
                        exportOptions: {
                            columns: [ 0, 1, 2,3]
                        }
                    },
                    {
                        extend: 'excelHtml5',
                        exportOptions: {
                            columns: [ 0, 1, 2,3,4]
                        }
                    },
                    {
                        extend: 'pdfHtml5',
                        exportOptions: {
                            columns: [ 0, 1, 2,3,4]
                        }
                    }, {
                        extend: 'csvHtml5',
                        exportOptions: {
                            columns: [ 0, 1, 2,3,4]
                        }
                    },
                ]
            });
        });
        $(document).ready(function () {
            $("#month").change(function(e){
                var url = "/" + $(this).val();
                if (url) {
                    window.location = url;
                }
                return false;
            });
        });

        //Update through AJAX
        $('a[id^=update]').click(function(e){
		        e.preventDefault();
		        var updateId = $(this).attr('id');
		        var arr = updateId.split('=');
		        var id = arr[1];
		        var role_name = $('#role'+id).children("option:selected").val();
		        var email = $('#email'+id).val();
		       
		        if ((role_name=='') || (email=='')){
		        	alert ("Please enter Email address and select User Rights");
		        	return;
		        }
		    	
		    	if(!isValidEmailAddress(email)) {
		    		alert("Email Address is not a Valid Email Address")
		    		return;
		    	}
		        var url = "{{route('updateActiveUsers')}}"+"/"+id;
		        
				//alert(email);	
		        $.ajaxSetup({
	          			headers: {
	              		'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          			}
      				});
      				
	     			$.ajax({
		            url: url, //this is the submit URL
		            type: 'POST', //or POST
		            data: {role_name:role_name, email:email},

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

         //Delete through AJAX
        $('a[id^=delete]').click(function(e){
		        e.preventDefault();
		        var deleteId = $(this).attr('id');
		        var arr = deleteId.split('=');
		        var id = arr[1];

		        var url = "{{route('deleteUser')}}"+"/"+id;
		        
				//alert(url);
				
				
		        $.ajaxSetup({
	          			headers:{
	              		'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          			}
      				});
      				
	     			$.ajax({
		            url: url, //this is the submit URL
		            type: 'POST', //or POST
		            //data: {role_id:role_id, email:email},
		            	success: function(data){
		            			$('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>User Deleted Sucessfully</strong></div>');
		            			$('html,body').animate({scrollTop:0},0);
		            			$('#role'+id).val('').trigger('change');
		        				$('#email'+id).val('');
			        	},
			        	error: function (jqXHR, textStatus, errorThrown){
			        		$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>User is not deleted</strong></div>');
		            			$('html,body').animate({scrollTop:0},0);
			        		
			        	}
	        		});
 
		    });
    		


	</script>
	@endpush
@stop