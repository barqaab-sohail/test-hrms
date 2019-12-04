@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
@section('Heading')
	<h3 class="text-themecolor">Employee Reports</h3>
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
			<h4 class="card-title">Employee Reports</h4>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Name of Report</th>	
					</tr>
					</thead>
					<tbody>
						
						<tr>
							<td><a href="{{route('employees.custom')}}">Employees Custom Reports</a></td>
						</tr>
						<tr>
							<td><a href="{{route('employees.managers')}}">Employees List and their Managers</a></td>
						</tr>
						<tr>
							<td><a href="{{route('managers')}}">Managers List</a></td>
						</tr><tr>
							<td><a href="{{route('employee.manager')}}">Employee Manager Hierarchy</a></td>
						</tr>
						@role('Super Admin')
						<tr>
						
							<td><a href="{{route('activeEmployee')}}">Missing Data</a></td>					
						</tr>	
						@endrole
						
								 
					
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
                dom: 'lfrtip',
                
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