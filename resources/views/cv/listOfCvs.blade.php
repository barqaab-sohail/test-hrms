@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
@section('Heading')
	<h3 class="text-themecolor">List of Cvs</h3>
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
			<h4 class="card-title">List of CVs</h4>

			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped"  style="width:100%" >
					<thead>
					<tr>
						<th>Name</th>
						<th>Father's Name</th>
						<th>Contact No.</th>
						<th>CNIC</th>
						<th>Total Experience</th>
						<th> Actions </th>
						<th></th>
					</tr>
					</thead>
					<tbody>
						@foreach($cvs as $cv)
							<tr>
								<td>{{$cv->full_name}}</td>
								<td>{{$cv->father_name}}</td>
								
								@foreach ($cv->cv_phone as $phone)
								<td>{{$phone->phone}}</td>
								@endforeach

								<td>{{isset($cv->cnic)?$cv->cnic:'No CNIC'}}</td>

								<td>
									@php
										foreach ($cvs as $cv){
		       								$totalExperience = \Carbon\Carbon::createFromDate($cv->job_starting_date)->diff(\Carbon\Carbon::now())->format('%y years, %m months');
		       	
		       								echo $totalExperience;
		        					    }
									@endphp
	
								</td>
								
					

								@can('cv_edit')
								<td>
									<a class="btn btn-info btn-sm" href="{{route('uploadCv.edit',['id'=>$cv->id])}}"  title="Edit"><i class="fas fa-pencil-alt text-white "></i></a>
								</td>
								@endcan
								@can('cv_delete')
								<td> 
								 <form action="{{route('uploadCv.destroy',['id'=>$cv->id])}}" method="POST">
								 @method('DELETE')
								 @csrf
								 <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href= data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></button>
								 </form>
								 @endcan
								 </td>
															
							</tr>
						@endforeach
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<style>
	 th, td { white-space: nowrap; }
    div.dataTables_wrapper {
        width: auto;
    }
	</style>
@push('scripts')
	<!-- start - This is for datatabe Fixed Columns only -->
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/fixedcolumns/3.2.6/js/dataTables.fixedColumns.min.js"></script>
<!-- end - This is for datatabe Fixed Columns only -->
	
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
                ],
                scrollY:        "300px",
      			scrollX:        true,
        		scrollCollapse: true,
        		paging:         false,
        		fixedColumns:   {
            		leftColumns: 1,
            		rightColumns:2
        		}
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