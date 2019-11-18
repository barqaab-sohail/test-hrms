
@extends('layouts.master.master')
@section('Heading')
	@include('hr.hrHeading')
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
						 
 						
		        		@can('edit record')
		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button"  id ="hideButton"  class="btn btn-info float-right">Add Training</button>
		                </div>
		                @endcan
		                 
 

		                <div class="card-body" id="hideDiv">

		                    <form action="{{route('training.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
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
		                                        
		                                            <select  name="country_id"  class="form-control selectTwo" required>
                                                        <option value=""></option>
                                                        @foreach($countries as $country)
														<option value="{{$country->id }}">{{$country->name}}</option>
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
		                                        <div class="col-md-9 date_input">
		                                        <label class="control-label text-right">From</label>
		                                        
		                                            <input type="text"  id="from" name="from" value="{{ old('from') }}" class="form-control" readonly>
													 
 

		                                            <br>
		                                            <i  class="fas fa-trash-alt text_requried"></i>
		                                             
 

		                                        </div>
		                                        
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                               		<div class="form-group row">
		                               			<div class="col-md-9 date_input">
		                               				<label class="control-label text-right">To</label>
		                                        
		                                            <input type="text"  id="to" name="to" value="{{ old('to') }}" class="form-control" readonly >
													 
 

		                                            <br>
		                                            <i  class="fas fa-trash-alt text_requried"></i>
		                                             
 

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
		                                    	 
 

		                                        <div class="col-md-offset-3 col-md-9">
		                                        	@can('edit record')
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Save</button>

		                                            @endcan
		                                            
		                                        </div>
		                                         
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		                </div>
	@if($trainingIds->count()!=0)		                    
	@include('hr.training.list')
	
	@endif
			                    
		        		       
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