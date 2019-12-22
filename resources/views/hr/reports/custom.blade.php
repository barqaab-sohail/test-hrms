@extends('layouts.master.master')
@section('title', 'Employee Custom Report')
@section('Heading')
	<h3 class="text-themecolor"></h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
		
		
	</ol>
@stop
@section('content')
   

    <div class="row">
        <div class="col-lg-12">

            <div class="card card-outline-info">
			
				<div class="row">
					
		        	<div class="col-lg-12">
						
		                <div style="margin-top:10px; margin-right: 10px;">
		                    		    
		                    		    <button type="button" onclick="window.location.href='{{route('hr.reports')}}'" class="btn btn-info float-right">Back to List</button>                
		                </div>
		                <div class="card-body">

		                    <form action="{{route('role.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Employee Custom Report</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                            <div class="col-md-10 offset-md-1">

		                            <!-- Material inline 1 -->
										<div class="form-check form-check-inline">
										  <input type="checkbox" class="form-check-input" id="Position" data-column="1">
										  <label class="form-check-label" for="Position">Position</label>
										</div>
		                               <!-- Material inline 1 -->
										<div class="form-check form-check-inline">
										  <input type="checkbox" class="form-check-input" id="Father Name" data-column="2">
										  <label class="form-check-label" for="Father Name">Father Name</label>
										</div>

										<!-- Material inline 2 -->
										<div class="form-check form-check-inline">
										    <input type="checkbox" class="form-check-input" id="email" data-column="3">
										  <label class="form-check-label" for="email">Email</label>
										</div>

										<!-- Material inline 3 -->
										<div class="form-check form-check-inline">
										   <input type="checkbox" class="form-check-input" id="CNIC" data-column="4">
										  <label class="form-check-label" for="CNIC">CNIC</label>
										</div>
										<div class="form-check form-check-inline">
										   <input type="checkbox" class="form-check-input" id="manager name" data-column="5">
										  <label class="form-check-label" for="manager name">Manager Name</label>
										</div>
										<div class="form-check form-check-inline">
										   <input type="checkbox" class="form-check-input" id="division" data-column="6">
										  <label class="form-check-label" for="division">Division</label>
										</div>
										<div class="form-check form-check-inline">
										   <input type="checkbox" class="form-check-input" id="qualification" data-column="7">
										  <label class="form-check-label" for="qualification">Qualification</label>
										</div>
										<div class="form-check form-check-inline">
										   <input type="checkbox" class="form-check-input" id="mobile" data-column="8">
										  <label class="form-check-label" for="mobile">Mobile</label>
										</div>

   									</div>
		                            </div>

		                        </div>
		                         <hr>
		                       
		        <div class="table-responsive m-t-40">
			
				<table id="myTable" class="cell-border"  style="width:100%" >
				
					<thead>
					<tr>
						<th>Employee Name</th>
						<th>Position</th>
						<th>Father's Name</th>
						<th>Email</th>
						<th>CNIC</th>
						<th>Manager Name</th>
						<th>Division</th>
						<th>Qualification</th>
						<th>Mobile No.</th>
					</tr>
					</thead>
					<tbody>
						@foreach($employees as $employee)
							<tr>
								<td>{{$employee->first_name}} {{$employee->middle_name}} {{$employee->last_name}}</td>
								@foreach($position as $p)

								@if($employee->id == $p->id)

								<td>{{isset($p->promotion_designation)?$p->promotion_designation:$p->appointment_designation}}</td>
								@endif

								@endforeach


								<td>{{$employee->father_name}}</td>
								<td>{{isset($employee->user->email)? $employee->user->email:'No Email'}}</td>
								<td>{{$employee->cnic}}</td>
								<td>{{managerName($employee->id)}}</td>
								
								<td>{{$employee->division->name}}</td>
								<td>{{$employee->education->implode('degree_name',' + ')}}</td>
								<td>{{isset($employee->contact->first()->mobile)? $employee->contact->first()->mobile:'No Data Entered'}}</td>
															
							</tr>
						@endforeach
					
					</tbody>
				</table>
			</div>
		                         	
		                         </div>

		                    </form>

		        		</div>       
		        	</div>
		        </div>
            </div>
        </div>
    </div>
    <style>
	 th, td { white-space: nowrap; }
    div.dataTables_wrapper {
        width: auto;
    }
    caption { caption-side: top; 
          width: auto;
          text-align: center }
	</style>
 @push('scripts')
    <script>  
        $(document).ready(function() {
        	
        	var table = $('#myTable').DataTable( {
        		"scrollY": "200px",
        		scrollX:true,
        		scrollCollapse: true,
        		"paging": false,
        		dom: 'Bfti',
                buttons: [
                    {
                        extend: 'copyHtml5',
                        exportOptions: {
                        	columns: ':visible'
                        }
                    },
                    {
                        extend: 'excelHtml5',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'pdfHtml5',
                         orientation: 'landscape',
                        exportOptions: {
                           columns: ':visible'
                        }
                    }, 
                ],
        		"columnDefs": [
            
		            {
		                "targets": [ 1,2,3,4,5,6,7,8 ],
		                "visible": false,
		                "searchable": false
		            }
        		],

    			} );


        	$('input[type="checkbox"]').click(function(){
            if($(this).prop("checked") == true){
            	var column = table.column( $(this).attr('data-column') );
            	column.visible(true);
            }
            else if($(this).prop("checked") == false){
            	var column = table.column( $(this).attr('data-column') );
            	 column.visible(false);
            }
    	    });
        });
            

    </script>
    @endpush

@stop