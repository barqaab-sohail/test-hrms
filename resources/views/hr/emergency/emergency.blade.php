
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
						 
 
		        		@can('edit record')
		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button"  id ="hideButton"  class="btn btn-info float-right">Add Emergency</button>
		                </div>
		                @endcan
		                 
 

		                <div class="card-body" id="hideDiv">

		                    <form action="{{route('emergency.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Emergency Contact Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Name<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="name" value="{{ old('name') }}" class="form-control" placeholder="Enter Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Relation</label>
		                                        
		                                            <input type="text" name="relation" value="{{ old('relation') }}" class="form-control " placeholder="Enter Relation Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Mobile No.<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="mobile" value="{{ old('mobile') }}" class="form-control"  required>
		                                        </div>
		                                       
		                                       
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Landline No.</label>
		                                        
		                                            <input type="text"  name="landline" value="{{ old('landline') }}" class="form-control"  >
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
	@if($emergencyIds->count()!=0)		                    

	@include('hr.emergency.list')
		
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