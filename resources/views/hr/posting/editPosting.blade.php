
@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Employee Name: {{$employee->first_name. " ".$employee->last_name}}</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
		
		
	</ol>
@stop
@section('content') 
   
    <div class="row">
        <div class="col-lg-12">

            <div class="card card-outline-info">
			
				<div class="row">
					<div class="col-lg-2">
					@include('layouts.master.hrVerticalEditButton')
					</div>
        			
		        	<div class="col-lg-10">

		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-info float-right">Back</button>
		                    
		                </div>
		                <div class="card-body">

		                    <form action="{!!route('editPosting', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Posting</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-2">Position</label>
		                                        <div class="col-md-10">
		                                            <input type="text"  name="position" value="{!! old('position', optional($data)->position) !!}" class="form-control" placeholder="Enter Position Name" required>
												
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-4">Posting Date</label>
		                                        <div class="col-md-8">
		                                            <input type="date" name="posting_date" value="{!! old('posting_date', optional($data)->posting_date) !!}" class="form-control " placeholder="Enter Posting Date" required>

		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-7">

		                                	
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-2">Manager Name</label>
		                                        <div class="col-md-10">
			                                        <select  name="manager_id"  class="form-control" required>
                                                    <option value=""></option>
													@foreach($employees as $employee)
													<option value="{{$employee->manager_id}}" @if($employee->manager_id == $data->manager_id) selected="selected" @endif>{{$employee->first_name." ".$employee->last_name.", ".$employee->designation}}</option>
                                                    @endforeach 	
                                                    </select>
                                                                                                        
		                                        </div>
		                                       
		                                       <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
		                                   
		                                    </div>
		                                </div>
		                                		                                
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">

		                                	
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-2">Project</label>
		                                        <div class="col-md-10">
			                                        <select  name="project"  class="form-control" required>
                                                    <option value=""></option>
													@foreach($projects as $project)
													<option value="{{$project->name}}" @if($project->name == $data->project) selected="selected" @endif>{{$project->name}}</option>
                                                    @endforeach 	
                                                    </select>
                                                                                                        
		                                        </div>
		                                       
		                                       <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
		                                   
		                                    </div>
		                                </div>
		                                		                                
		                            </div>
		                            		                           
		                        </div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Edit Posting</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		@if($postingIds->count()!=0)		                    
			                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Posting</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Project</th>
						<th>Position</th>
						<th>Date of Posting</th>
						
						@if(Auth::user()->role_id==1)<th> Actions </th> @endif
					</tr>
					</thead>
					<tbody>
						@foreach($postingIds as $postingId)
							<tr>
								<td>{{$postingId->project}}</td>
								<td>{{$postingId->position}}</td>
								<td>{{$postingId->posting_date}}</td>
								
								<td>
								@if(Auth::user()->role_id==1)
								 <a class="btn btn-info btn-sm" href="{{route('posting.edit',['id'=>$postingId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 <a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deletePosting',['id'=>$postingId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>

								 
								 @endif
															
							</tr>
						@endforeach
					
					 
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	@endif
			                    
		        		</div>       
		        	</div>
		        </div>
            </div>
        </div>
    </div>
 @push('scripts')
        <script>
            $(document).ready(function(){
			
			});
        </script>
    @endpush

@stop