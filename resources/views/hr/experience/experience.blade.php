
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
		                    <button type="button"  id ="hideButton"  class="btn btn-info float-right">Add Experience</button>
		                </div>
		                @endcan
		                 
 

		                <div class="card-body" id="hideDiv">

		                    <form action="{{route('experience.store')}}" method="POST" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Experience</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Employer<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="employer" value="{{ old('employer') }}" class="form-control" placeholder="Enter Employer Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Position<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="position" value="{{ old('position') }}" class="form-control " placeholder="Enter Position Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-8 date_input">
		                                        	<label class="control-label text-right">From<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" id="from" name="from" value="{{ old('from') }}" class="form-control" readonly required>
													 
 

		                                            <br>
		                                            <i  class="fas fa-trash-alt text_requried"></i>
		                                             
 

		                                        </div>
		                                        
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 date_input">
		                                        	<label class="control-label text-right">To<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" id="to" name="to" value="{{ old('to') }}" class="form-control" readonly required>
		                                             
 

		                                            <br>
		                                            <i  class="fas fa-trash-alt text_requried"></i>
		                                             
 

		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                          
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-8">
		                                        	<label class="control-label text-right ">Country<span class="text_requried">*</span></label>
		                                        
		                                             <select  name="country_id"  class="form-control selectTwo" required>
                                                        <option value=""></option>
                                                        @foreach($countries as $country)
														<option value="{{$country->id}}" {{(old("country_id")==$country->id? "selected" : "")}}>{{$country->name}}</option>
                                                        @endforeach
                                                        
                                                    </select>
		                                        </div>
		                                        
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        
		                                    </div>
		                                </div>
		                            </div>
									

		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-12">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Activities</label>
		                                        
		                                         <textarea  rows=1 cols=5 id="activities" name="activities" class="form-control " >{{ old('activities') }}</textarea>
		                                        
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
	@if($experienceIds->count()!=0)		                    
	@include('hr.experience.list')
		
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