@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">HR Charts</h3>
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
			<h4 class="card-title">HR Charts</h4>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Name of Charts</th>	
					</tr>
					</thead>
					<tbody>
						
						<tr>
							<td><a href="{{route('chart.division')}}">Divisionwise Chart</a></td>
							
						</tr>
						<tr>
							<td><a href="{{route('chart.age')}}">Agewise Chart</a></td>
						</tr>
						<tr>
							<td><a href="{{route('chart.category')}}">Categorywise Chart</a></td>
						</tr>
						
								 
					
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