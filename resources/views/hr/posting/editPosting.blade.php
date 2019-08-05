
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
						@can('entry', Auth::user())
		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-info float-right">Back</button>
		                    
		                </div>
		                @endcan
		                <div class="card-body">

		                    <form action="{!!route('editPosting', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Posting</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Position<span class="text_requried">*</span></label>
		                                        
		                                           
												<select  name="position"  class="form-control" required>
                                                      <option></option>
                                                     @foreach($positions as $position)
														
														<option value="{{$position->name}}" @if($position->name == optional($data)->position)) selected="selected" @endif>{{$position->name}}</option>
                                                        @endforeach
                                                        
                                                    </select>
	                                           
												
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Posting Date<span class="text_requried">*</span></label>
		                                            <input type="text" name="posting_date" id="posting_date" value="{!! old('posting_date', optional($data)->posting_date) !!}" class="form-control " placeholder="Enter Posting Date" required readonly>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                             <div class="row">
		                                <div class="col-md-7">
		                                     <div class="form-group row">
		                                        <div class="col-md-9">
		                                        	<label class="control-label text-right">Manager Name<span class="text_requried">*</span></label>
		                                        
			                                        <select  name="manager_id"  class="form-control" required>
                                                    <option value=""></option>
													@foreach($employees as $employee)
													<option value="{{$employee->id}}" @if($employee->id == $data->manager_id) selected="selected" @endif>{{$employee->first_name." ".$employee->last_name.", ".$employee->designation}}</option>
                                                    @endforeach 	
                                                    </select>
                                                                                                        
		                                        </div>
		                                       		                                   
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Joining Date<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="joining_date" id="joining_date" value="{!! old('joining_date', optional($data)->joining_date) !!}" class="form-control " placeholder="Enter Posting Date" required readonly>

		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                           		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Project<span class="text_requried">*</span></label>
		                                        
			                                        <select  name="project"  class="form-control" required>
                                                    <option value=""></option>
													@foreach($projects as $project)
													<option value="{{$project->name}}" @if($project->name == $data->project) selected="selected" @endif>{{$project->name}}</option>
                                                    @endforeach 	
                                                    </select>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-5">
                                	        <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Location</label>
		                                        
		                                        	<input type="text" name="location" value="{!! old('location', optional($data)->location) !!}"  class="form-control " placeholder="Enter Location" >
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
		                                    	@can('entry', Auth::user())
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Edit Posting</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                        @endcan
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
						
						@if(Auth::user()->role_id==1)<th colspan="2"> Actions </th> @endif
					</tr>
					</thead>
					<tbody>
						@foreach($postingIds as $postingId)
							<tr>
								<td>{{$postingId->project}}</td>
								<td>{{$postingId->position}}</td>
								<td>{{$postingId->posting_date}}</td>
								
								
								 @can('entry', Auth::user())
								 <td>
								 <a class="btn btn-info btn-sm" href="{{route('posting.edit',['id'=>$postingId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 </td>
								 <td>
								 <a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deletePosting',['id'=>$postingId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>
								</td>
								 
								 @endcan
															
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
            	$( "#posting_date, #joining_date" ).datepicker({
	     		dateFormat: 'dd-MM-yy',
	      		yearRange: (new Date().getFullYear()-20)+':'+(new Date().getFullYear()+15),
	      		changeMonth: true,
	      		changeYear: true
	    		});

	    		
	    	});
        </script>
    @endpush

@stop