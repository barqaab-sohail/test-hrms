
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

		                    <form action="{!!route('editExperience', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Edit Experience</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Employer<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="employer" value="{!! old('employer', optional($data)->employer) !!}" class="form-control" placeholder="Enter Employer Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Position<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="position" value="{!! old('position', optional($data)->position) !!}" class="form-control " placeholder="Enter Position Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-7">
		                                        	<label class="control-label text-right ">From<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" id="from" name="from" value="{!! old('from', optional($data)->from) !!}" class="form-control"  required readonly><br>
		                                            <i id="clearFrom" onclick="return confirm('Are you sure to clear date')" class="fas fa-trash-alt text_requried"></i>
		                                        </div>
		                                        <div class="col-md-5">
		                                        	<label class="control-label text-right">To<span class="text_requried">*</span></label>
		                                            <input type="text"  id="to" name="to" value="{!! old('to', optional($data)->to) !!}" class="form-control" readonly  required><br>
		                                            <i id="clearTo" onclick="return confirm('Are you sure to clear date')" class="fas fa-trash-alt text_requried"></i>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Assignment Name</label>
		                                        
		                                            <input type="text" name="project" value="{!! old('project', optional($data)->project) !!}" class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">

		                                        	<label class="control-label text-right ">Client</label>
		                                        
		                                             <input type="text"  name="client" value="{!! old('client', optional($data)->client) !!}" class="form-control" placeholder="Enter Client Name" required>

		                                        	
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Assignment Location</label>
		                                            <input type="text"  name="location" value="{!! old('location', optional($data)->location) !!}" class="form-control" placeholder="Enter Location" required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        
		                                        
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Country<span class="text_requried">*</span></label>
		                                        
		                                             <select  name="country"  class="form-control" required>
                                                        <option value=""></option>
                                                        @foreach($countries as $country)
														<option value="{{$country->name}}" @if($country->name == $data->country) selected="selected" @endif>{{$country->name}}</option>
                                                    	@endforeach 	
                                                        
                                                    </select>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
									 <div class="row">
		                                <!--/span-->
		                                <div class="col-md-12">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Main Features</label>
		                                        
		                                         <textarea  rows=1 cols=5 id="main_features" name="main_features" class="form-control " >{!! old('main_features', optional($data)->main_features) !!}</textarea>
		                                        												
		                                        </div>  
		                                    </div>
		                                
		                                </div>
		                                <!--/span-->
		                            </div>
		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-12">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Activities</label>
		                                        
		                                         <textarea  rows=1 cols=5 name="activities" class="form-control " required>{!! old('activities', optional($data)->activities) !!}</textarea>
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
		                                    	@can('entry', Auth::user())
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Edit Experience</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                        @endcan
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
								 <a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deleteExperience',['id'=>$experienceId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>
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
            	$( function() {
			    $( "#from, #to" ).datepicker({
			      dateFormat: 'yy-M-dd',
			      yearRange: '1960:'+ (new Date().getFullYear()),
			      changeMonth: true,
			      changeYear: true
			    });
		    	});


		    	 //Posting To
            	if($("#to").val()==''){
            		$("#clearTo").hide();

            	}else{
            		$("#clearTo").show();
	            		   		$("#clearTo").click(function(){
					    		$("#to").val("");
					    		$("#clearTo").hide();
					 });

            	}

            	$("#to").change(function(){
		    		$("#clearTo").show();
		    		$("#clearTo").click(function(){
		    		$("#to").val("");
		    		$("#clearTo").hide();
		    		});

		    	});
            	
            	//Clear From
            	if($("#from").val()==''){
            		$("#clearFrom").hide();

            	}else{
            		$("#clearFrom").show();
	            		   		$("#clearFrom").click(function(){
					    		$("#from").val("");
					    		$("#clearFrom").hide();
					 });

            	}

            	$("#from").change(function(){
		    		$("#clearFrom").show();
		    		$("#clearFrom").click(function(){
		    		$("#from").val("");
		    		$("#clearFrom").hide();
		    		});

		    	});


			   			
			});
        </script>
    @endpush

@stop