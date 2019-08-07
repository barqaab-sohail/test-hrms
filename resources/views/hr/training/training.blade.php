
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

		                    <form action="{{route('storeTraining')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Training/Workshop/Course</h3>
		                            <hr class="m-t-0 m-b-40">
									 <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right ">Title<span class="text_requried">*</span></label>
		                                            <input type="text"  name="title" value="{{ old('title') }}" class="form-control" placeholder="Enter Title Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Venue</label>
		                                        
		                                            <input type="text" name="venue" value="{{ old('venue') }}" class="form-control " placeholder="Enter Venue Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>

		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Institution</label>
		                                            <input type="text"  name="institute" value="{{ old('institute') }}" class="form-control" placeholder="Enter Institute Name">
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Country<span class="text_requried">*</span></label>
		                                        
		                                            <select  name="country"  class="form-control" required>
                                                        <option value=""></option>
                                                        @foreach($countries as $country)
														<option value="{{$country->name }}">{{$country->name}}</option>
                                                        @endforeach
                                                        
                                                    </select>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-9">
		                                        <label class="control-label text-right">From</label>
		                                        
		                                            <input type="text"  id="from" name="from" value="{{ old('from') }}" class="form-control" readonly><br>
		                                            <i id="clearFrom" onclick="return confirm('Are you sure to clear date')" class="fas fa-trash-alt text_requried"></i>
		                                        </div>
		                                        
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                               		<div class="form-group row">
		                               			<div class="col-md-9">
		                               				<label class="control-label text-right">To</label>
		                                        
		                                            <input type="text"  id="to" name="to" value="{{ old('to') }}" class="form-control" readonly ><br>
		                                            <i id="clearTo" onclick="return confirm('Are you sure to clear date')" class="fas fa-trash-alt text_requried"></i>
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                            <div class="row">
		                            	<div class="col-md-12">
			                            	<div class="form-group row">
			                                        <div class="col-md-12">
			                                        <label class="control-label text-right">Description<span class="text_requried">*</span></label>
			                                        
			                                             <textarea  rows=6 cols=5 name="description" value="{{ old('description') }}" class="form-control " ></textarea>
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
		                                            <button type="submit" class="btn btn-success">Add Training</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                        @endcan
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		@if($trainingIds->count()!=0)		                    
			                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Training</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Title</th>
						<th>Country</th>
						<th>From</th>
						<th>To</th>
						@can('entry', Auth::user())<th> Actions </th> @endcan
					</tr>
					</thead>
					<tbody>
						@foreach($trainingIds as $trainingId)
							<tr>
								<td>{{$trainingId->title}}</td>
								<td>{{$trainingId->country}}</td>
								<td>{{$trainingId->from}}</td>
								<td>{{$trainingId->to}}</td>
								<td>
								 @can('entry', Auth::user())
								<a class="btn btn-info btn-sm" href="{{route('training.edit',['id'=>$trainingId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								<a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deleteTraining',['id'=>$trainingId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>

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
	             $( "#from, #to" ).datepicker({
			      dateFormat: 'dd-MM-yy',
			      yearRange: '1940:'+ (new Date().getFullYear()+15),
			      changeMonth: true,
			      changeYear: true
			    });


	            $('select').select2({
	  				width: "100%",
		  		 	theme: "classic",

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