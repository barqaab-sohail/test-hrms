@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
@section('Heading')
	<h3 class="text-themecolor">List of Active Employees</h3>
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
			<h4 class="card-title">List of Active Employees</h4>

						<button type="button" onclick="window.location.href='{{route('hr.reports')}}'" class="btn btn-info float-right">Back to List</button>
			
			<div class="table-responsive m-t-40">
@if($employees->count())
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
						<tr>
							<th>Employee Name</th>
							<th>Manager Name</th>
						</tr>
					</thead>
					<tbody>
						@foreach($employees as $employee)
							<tr >
								<td>{{$employee->first_name." ".$employee->middle_name." ".$employee->last_name}}</td>
								<td>{{managerName($employee->posting->first()!=null?$employee->posting->first()->manager_id:'')}}</td>

							</tr>
						@endforeach
					 
					
					</tbody>
					<tfoot>
            			<tr>
							<th>Manager Name</th>
							<th>Employee Name</th>
							
						</tr>
        			</tfoot>
				</table>
@else

<h4 class="card-title">No Record Found</h4>

@endif
			</div>
		</div>
	</div>
@push('scripts')
	
	
	<script>
        $(document).ready(function() {
            $('#myTable').DataTable({
        	"pageLength": 100,
        	initComplete: function () {
            this.api().columns().every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                    .appendTo( $(column.footer()).empty() )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 				
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
          		 

          		  } );
       			 }

   			} );
           /* $("table").rowspanizer({
			  vertical_align: 'middle',
			  columns: [0]
			});*/

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