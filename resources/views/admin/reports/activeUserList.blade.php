@extends('layouts.master.master')
@section('Heading')
	

	<h3 class="text-themecolor">Login User List</h3>
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
			<h4 class="card-title">Total Login Users = {{$totalActiveUsers}}</h4>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Employee Name</th>
						<th>Email</th>
						<th>CNIC</th>
						<th>Father Name</th>
						
					</tr>
					</thead>
					<tbody>
						@foreach($activeUsers as $employee)
							<tr>
								<td>{{$employee->first_name}} {{$employee->last_name}}</td>
								<td>{{$employee->email}}</td>
								<td>{{$employee->cnic}}</td>
								<td>{{$employee->father_name}}</td>
																						
							</tr>
						@endforeach
					
					 
					
					</tbody>
				</table>
			</div>
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
	</script>
	@endpush
@stop