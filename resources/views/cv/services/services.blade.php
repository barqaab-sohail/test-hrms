@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
@section('Heading')
	<h3 class="text-themecolor">CV Services</h3>
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
			<h4 class="card-title">CV Services</h4>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Name of Servivces</th>	
					</tr>
					</thead>
					<tbody>
						
						<tr>
							<td><a href="{{route('addExpertize.index')}}">Add Specialization</a></td>
						</tr>
						<tr>
							<td><a href="{{route('addField.index')}}">Add Field of Specialization</a></td>
						</tr>
						<tr>
							<td><a href="{{route('addDegree.index')}}">Add Name of Degree</a></td>
						</tr><tr>
							<td><a href="{{route('addMembership.index')}}">Add Membership</a></td>
						</tr>
						@role('Super Admin')
						<tr>
						
							<td><a href=""></a></td>					
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