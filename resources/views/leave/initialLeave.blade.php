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
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
		<div class="container">
   					<h3 align="center">Add Initial Balance</h3>

				   	<form method="post" enctype="multipart/form-data" action="{{route('storeInitialBalance')}}">
				    {{ csrf_field() }}
				    <div class="row">
		                                <!--/span-->
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-8">
		                                        	<label class="control-label text-right ">Name of Employee</label>
		                                        	<select  name="employee_id"  class="form-control" required>
                                                        <option value=""></option>
                                                        @foreach($employees as $employee)
														<option value="{{$employee->id}}" {{(old("employee_id")==$employee->id? "selected" : "")}}>{{$employee->first_name." ".$employee->middle_name." ".$employee->last_name}}</option>
                                                        @endforeach
                                                      
                                                    </select>
		                                            
		                                        </div>
		                                        <div class="col-md-4">
		                                        	<label class="control-label text-right ">Leave Type</label>
		                                        	<select  name="leave_type_id"  class="form-control" required>
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
		                                        	<label class="control-label text-right">Balance</label>
		                                             <input type="number" name="balance" value="{{ old('balance')}}"   class="form-control prc"  >
		                                        </div>
		                                        <div class="col-md-9 date_input">
											   		<label class="control-label text-right">Effective Date</label>
		                                             <input type="text" name="effective_date" value="{{ old('effective_date')}}"   class="form-control prc"  readonly>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                             </div>
				   			<button type="submit" class="btn btn-success">Save</button>
				   </form>
		</div>

		<hr>
@if($initialLeaves->count()!=0)
			<h4 class="card-title">List of Initial Leave Balance</h4>
				
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Employee Name</th>
						<th>Leave Type</th>
						<th>Balance</th>
						<th> Actions </th>
						
					</tr>
					</thead>
					<tbody>
						@foreach($initialLeaves as $initialLeave)
							<tr>
								<td>{{$initialLeave->employee->first_name. " ".$initialLeave->employee->middle_name." ".$initialLeave->employee->last_name}}</td>
								<td>{{$initialLeave->leave_type->name}}</td>
								<td>{{$initialLeave->balance}}</td>
								
								<td>
								 <a class="btn btn-info btn-sm" href="" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
															
							</tr>
						@endforeach
					
					 
					
					</tbody>
				</table>
			</div>
	@else
	<h4 class="card-title">No Phone Record Entered</h4>

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
        $(document).ready(function() {
            $('#myTable').DataTable({
                stateSave: false,
                dom: 'Blfrtip',
                buttons: [
                    {
                        extend: 'copyHtml5',
                        exportOptions: {
                            columns: [ 0, 1, 2,3,4]
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
	</script>
	@endpush
@stop