
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

		                    <form action="{{route('storeExperience')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Experience</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Employer</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="employer" value="{{ old('employer') }}" class="form-control" placeholder="Enter Employer Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Position</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="position" value="{{ old('position') }}" class="form-control " placeholder="Enter Position Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">From</label>
		                                        <div class="col-md-4">
		                                            <input type="date"  name="from" value="{{ old('from') }}" class="form-control"  required>
		                                        </div>
		                                        <label class="control-label text-right col-md-1">To</label>
		                                        <div class="col-md-4">
		                                            <input type="date"  name="to" value="{{ old('to') }}" class="form-control"  required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Project Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="project" value="{{ old('project') }}" class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Location</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="location" value="{{ old('location') }}" class="form-control" placeholder="Enter Location" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Countary</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="countary" value="{{ old('countary') }}" class="form-control " placeholder="Enter Countary Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-12">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-1">Activities</label>
		                                        <div class="col-md-11">
		                                         <textarea  rows=10 cols=5 name="activities" class="form-control " required>{{ old('activities') }}</textarea>
		                                        
												 <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
		                                        </div>  
		                                    </div>
		                                
		                                </div>
		                                <!--/span-->
		                            </div>
		                            <!--/row-->
		                                                    
		                           
		                        </div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Add Experience</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		@if($experienceIds->count()!=0)		                    
			                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Experience</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Employer Name</th>
						<th>Position</th>
						<th>From</th>
						<th>To</th>
						@if(Auth::user()->role_id==1)<th> Actions </th> @endif
					</tr>
					</thead>
					<tbody>
						@foreach($experienceIds as $experienceId)
							<tr>
								<td>{{$experienceId->employer}}</td>
								<td>{{$experienceId->position}}</td>
								<td>{{$experienceId->from}}</td>
								<td>{{$experienceId->to}}</td>
								<td>
								@if(Auth::user()->role_id==1)
								 <a class="btn btn-info btn-sm" href="{{route('experience.edit',['id'=>$experienceId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
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