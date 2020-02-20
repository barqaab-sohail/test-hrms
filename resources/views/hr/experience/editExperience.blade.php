
@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
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
						 
 

		                <div style="margin-top:10px; margin-right: 10px;">
		                    
		                    
		                </div>
		                 
 

		                <div class="card-body">

		                    <form action="{!!route('experience.update', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                    @method('PATCH')
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
		                                        <div class="col-md-8 date_input">
		                                        	<label class="control-label text-right ">From<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" id="from" name="from" value="{!! old('from', optional($data)->from) !!}" class="form-control"  required readonly>
													 
 

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
		                                            <input type="text"  id="to" name="to" value="{!! old('to', optional($data)->to) !!}" class="form-control" readonly  required>
													 
 

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
														<option value="{{$country->id}}" @if($country->id == $data->country_id) selected="selected" @endif>{{$country->name}}</option>
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
		                                        
		                                         <textarea  rows=1 cols=5 name="activities" class="form-control " >{!! old('activities', optional($data)->activities) !!}</textarea>
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
		                                        @can('hr_edit_record')
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Edit Experience</button>
		                                        @endcan
		                                            
		                                        </div>
		                                         
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
	@if($experienceIds->count()!=0)		                    
	@include ('hr.experience.list')
		
	
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