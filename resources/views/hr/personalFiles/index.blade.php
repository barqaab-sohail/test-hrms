@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
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
						<th>Document Name</th>
						<th>View</th>
						

					</tr>
					</thead>
					<tbody>
						@foreach($employees as $employee)
								@foreach($documents as $document)
									@if($document->employee_id==$employee->id)
									<tr >
										<td>{{$employee->first_name." ".$employee->middle_name." ".$employee->last_name}}</td>
										<td>{{$employee->cnic}}</td>
										<td>{{$document->document_name}}
										</td>
										@if($document->type!='application/pdf')
											<td><img  id="ViewIMG" src="{{asset(isset($document->file_name)? 'storage/'.$document->file_path.$document->file_name: 'Massets/images/document.png') }}" href="{{asset(isset($document->file_name)?  'storage/'.$document->file_path.$document->file_name: 'Massets/images/document.png') }}" width=30/></td>
											@else
											<td><img  id="ViewPDF" src="{{asset('Massets/images/document.png')}}" href="{{asset(isset($document->file_name)? 'storage/'.$document->file_path.$document->file_name: 'Massets/images/document.png') }}" width=30/></td>
										@endif
										
									</tr>
									@endif
								@endforeach
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
                "columnDefs": [
            
		            {
		                "targets": [ 2,3],
		                "searchable": false
		            }
        		],

                buttons: [
                    {
                        extend: 'copyHtml5',
                        exportOptions: {
                            columns: [ 0, 1,2]
                        }
                    },
                    {
                        extend: 'excelHtml5',
                        exportOptions: {
                            columns: [ 0, 1,2]
                        }
                    },
                    {
                        extend: 'pdfHtml5',
                        exportOptions: {
                            columns: [ 0, 1,2]
                        }
                    }, {
                        extend: 'csvHtml5',
                        exportOptions: {
                            columns: [ 0, 1,2]
                        }
                    },
                ]
            });
       
        $("#myTable").rowspanizer({
			  vertical_align: 'middle',
			  columns: [0,1]
		});


       });
        
        $(function(){
 		 $('#ViewPDF, #ViewIMG').EZView();
		});

		
   		


	</script>
	@endpush
@stop