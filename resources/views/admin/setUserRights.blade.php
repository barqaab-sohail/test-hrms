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

					</tr>
					</thead>
					<tbody>
						@foreach($employees as $employee)
							<tr>
								<td>{{$employee->first_name}} {{$employee->middle_name}} {{$employee->last_name}}</td>
								<td>{{$employee->cnic}}</td>
								<td>{{isset($employee->user->email)? $employee->user->email:'No Email'}}</td>
								<td> 
									<select  name="role_id"  class="form-control" >
                                    		<option value="{{5}}"></option>
                                        @foreach($roles as $role)
											<option value="{{$role->id}}"
											@if(!empty($employee->user->role_id))
												@if($role->id == $employee->user->role_id) selected="selected"@endif
											@endif>{{$role->name}}</option>
										@endforeach
                                    </select>
                                </td>
								<td>
									<a class="btn btn-info btn-sm" id="update,id={{$employee->id}}" data-toggle="tooltip" title="Update"><i class="fas fa-save text-white"></i></a>
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
                dom: 'Blfrtip',
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

		        //alert(updateId);

		        var url = "http://localhost/hrms/public/adminInfo/updateActiveUsers/4";
		        
		        var 

		        $.ajaxSetup({
	          			headers: {
	              		'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          			}
      				});

      				
	     			$.ajax({
		            url: url, //this is the submit URL
		            type: 'POST', //or POST
		            data: {},
		                  	success: function(data){
		            		alert(data);
			        	}
	        		});
 
		    });
    		


	</script>
	@endpush
@stop