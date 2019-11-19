@extends('layouts.master.master')
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
				
				
				<table id="myTable" class="table table-bordered table-striped"  style="width:100%" >
					<thead>
					
					<tr>
						<th>Employee Name</th>
						<th>Email</th>
						<th>Picture</th>
						<th>Appointment Category</th>
						<th>Salary Total</th>
						<th>Posting Date</th>
						<th>Education</th>
						<th>Membership</th>
						<th>Language</th>
						<th>Experience Employer</th>
						<th>Promotion Designation</th>
						<th>Contact House</th>
						<th>Emergency Contact Relation</th>
						<th>Document Name</th>
						<th>Other Information Kin Relation</th>
					</tr>
					</thead>
					<tbody>
						@foreach($employees as $employee)
							<tr>
								<td>{{$employee->first_name}} {{$employee->middle_name}} {{$employee->last_name}}</td>
								<td>{{isset($employee->user->email)? $employee->user->email:'No Email'}}</td>
								<td>{{isset($employee->picture->name)?$employee->picture->name:'Not Entered'}}</td>
								<td>{{isset($employee->appointment->category)?$employee->appointment->category:'Not Entered'}}</td>
								<td>{{$employee->salary->implode('total','+ ')}}</td>
								<td>{{$employee->posting->implode('posting_date','+ ')}}</td>
								<td>{{$employee->education->implode('degree_name','+ ')}}</td>
								<td>{{$employee->membership->implode('membership_no','+ ')}}</td>
								<td>{{$employee->language->implode('all_language_id','+ ')}}</td>
								<td>{{$employee->experience->implode('employer','+ ')}}</td>
								<td>{{$employee->promotion->implode('designation_id','+ ')}}</td>
								<td>{{$employee->contact->implode('house','+ ')}}</td>
								<td>{{$employee->emergency_contact->implode('relation','+ ')}}</td>
								<td>{{$employee->document->implode('document_name','+ ')}}</td>
								<td>{{isset($employee->other_information->kin_relation)?$employee->other_information->kin_relation:'Not Entered'}}</td>

								
								
																							
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
                            columns: [ 0, 1, 2,3,4,5,6,7,8,9,10,11,12,13,14]
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