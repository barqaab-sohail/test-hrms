@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">List of Employees</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)">List of Employees</a></li>
		
		
	</ol>
@stop
@section('content')
	<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h4 class="card-title">List of Employees</h4>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Employee Name</th>
						<th>Email</th>
						<th>CNIC</th>
						<th>CNIC Expiry</th>
						<th> Actions </th>
					</tr>
					</thead>
					<tbody>
						@foreach($users as $user)
							<tr>
								<td>{{$user->first_name}} {{$user->last_name}}</td>
								<td>{{$user->email}}</td>
								<td>{{$user->cnic}}</td>
								<td>{{$user->cnic_expiry}}</td>
								<td>
								
								 <a class="btn btn-info btn-sm" href="{{route('user.edit',['id'=>$user->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
															
							</tr>
						@endforeach
					
					 
					
					</tbody>
				</table>
			</div>
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