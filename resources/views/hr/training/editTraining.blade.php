
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
		                    <button type="button" onclick="window.location.href='{{route('employee.index')}}'" class="btn btn-info float-right">Back</button>
		                    
		                </div>
		                @endcan
		                <div class="card-body">

		                    <form action="{!!route('training.update', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                    @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Edit Training/Workshop/Course</h3>
		                            <hr class="m-t-0 m-b-40">
									<div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Title<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="title" value="{!! old('title', optional($data)->title) !!}" class="form-control" placeholder="Enter Title Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Venue</label>
		                                        
		                                            <input type="text" name="venue" value="{!! old('venue', optional($data)->venue) !!}" class="form-control " placeholder="Enter Venue Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->

		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Institution</label>
		                                        
		                                            <input type="text"  name="institute" value="{!! old('institute', optional($data)->institute) !!}" class="form-control" placeholder="Enter Institute Name">
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
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
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-9 date_input">
		                                        	<label class="control-label text-right ">From</label>
		                                        
		                                            <input type="text"  id="from" name="from" value="{!! old('from', optional($data)->from) !!}" class="form-control"  readonly >
													@can('entry', Auth::user())
		                                            <br>
		                                            <i class="fas fa-trash-alt text_requried"></i>
		                                            @endcan
		                                        </div>
		                                        
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                	<div class="form-group row">
		                                    	<div class="col-md-9 date_input">
		                                    		<label class="control-label text-right ">To</label>
		                                            <input type="text"  id="to" name="to" value="{!! old('to', optional($data)->to) !!}" class="form-control" readonly>
													@can('entry', Auth::user())
		                                            <br>
		                                            <i  class="fas fa-trash-alt text_requried"></i>
		                                            @endcan
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="row">
		                               	<div class="col-md-12">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Description<span class="text_requried">*</span></label>
		                                        
		                                             <textarea  rows=6 cols=5 name="description" class="form-control " required>{!! old('description', optional($data)->description) !!}</textarea>
		                                        </div>
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
		                                            <button type="submit" class="btn btn-success">Edit Training</button>
		                                            <button type="button" onclick="window.location.href='{{route('employee.index')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                        @endcan
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
	@if($trainingIds->count()!=0)		                    
	@include('hr.training.list')	
	
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