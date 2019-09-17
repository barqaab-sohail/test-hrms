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

		                    <form action="{{route('editPermanentAddress', ['id'=>$employee->id])}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Permanent Address</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 text">
		                                        <label class="control-label text-right ">House No.</label>
		                                        
		                                            <input type="text"  name="house" value="{!! old('house',isset($permanentAddress->house)?$permanentAddress->house:'')!!}" class="form-control" placeholder="Enter House Name / No." required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Street No.</label>
		                                        
		                                            <input type="text"  name="street" value="{!! old('street',isset($permanentAddress->street)?$permanentAddress->street:'')!!}" class="form-control" placeholder="Enter Street Name / No." >
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Town / Village<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="town" value="{!! old('house',isset($permanentAddress->town)?$permanentAddress->town:'')!!}" class="form-control" placeholder="Enter Town / Village" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Tehsil</label>
		                                        
		                                            <input type="text"  name="tehsil" value="{!! old('tehsil',isset($permanentAddress->tehsil)?$permanentAddress->tehsil:'')!!}" class="form-control" placeholder="Enter Tehsil Name " >
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">City / District<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="city" value="{!! old('city',isset($permanentAddress->city)?$permanentAddress->city:'')!!}" class="form-control" placeholder="Enter City / District Name " required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                       <div class="col-md-12">
		                                       	<label class="control-label text-right ">Province<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="province" value="{!! old('house',isset($permanentAddress->province)?$permanentAddress->province:'')!!}" class="form-control" placeholder="Enter Province" required>
		                                        </div>

		                                    </div>
		                                    
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Country<span class="text_requried">*</span></label>
		                                        
		                                            	<select  name="country"  class="form-control selectTwo" required>
                                                        <option value=""></option>
                                                        @foreach($countries as $country)
														<option value="{{$country->name}}" @if($country->name == optional($permanentAddress)->country) selected="selected" @endif>{{$country->name}}</option>
                                                    	@endforeach 	
                                                        
                                                    	</select>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Mobile No.<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="mobile" value="{!! old('house',isset($permanentAddress->mobile)?$permanentAddress->mobile:'')!!}" class="form-control" placeholder="Enter Mobile No" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Landline No.</label>
		                                        
		                                            <input type="text"  name="landline" value="{!! old('landline',isset($permanentAddress->landline)?$permanentAddress->landline:'')!!}" class="form-control" placeholder="Enter Landline No. " >
		                                        </div>
												<input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
												
												<input type="number" name="type" value="{{0}}"   class="form-control " hidden>

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
		                                            <button type="submit" class="btn btn-success">Save Permanent Address</button>
		                                            <button type="button" onclick="window.location.href='{{route('employee.index')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    @endcan
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		        		</div>       
						
						<hr>

						 <div class="card-body">

		                    <form action="{{route('editCurrentAddress', ['id'=>$employee->id])}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Current Address</h3>
		                            <hr class="m-t-0 m-b-40">
     <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 text">
		                                        <label class="control-label text-right ">House No.</label>
		                                        
		                                            <input type="text"  name="house" value="{!! old('house',isset($currentAddress->house)?$currentAddress->house:'')!!}" class="form-control" placeholder="Enter House Name / No." required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Street No.</label>
		                                        
		                                            <input type="text"  name="street" value="{!! old('street',isset($currentAddress->street)?$currentAddress->street:'')!!}" class="form-control" placeholder="Enter Street Name / No." >
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Town / Village<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="town" value="{!! old('house',isset($currentAddress->town)?$currentAddress->town:'')!!}" class="form-control" placeholder="Enter Town / Village" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Tehsil</label>
		                                        
		                                            <input type="text"  name="tehsil" value="{!! old('tehsil',isset($currentAddress->tehsil)?$currentAddress->tehsil:'')!!}" class="form-control" placeholder="Enter Tehsil Name " >
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">City / District<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="city" value="{!! old('city',isset($currentAddress->city)?$currentAddress->city:'')!!}" class="form-control" placeholder="Enter City / District Name " required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                       <div class="col-md-12">
		                                       	<label class="control-label text-right ">Province<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="province" value="{!! old('house',isset($currentAddress->province)?$currentAddress->province:'')!!}" class="form-control" placeholder="Enter Province" required>
		                                        </div>

		                                    </div>
		                                    
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Country<span class="text_requried">*</span></label>
		                                        
		                                             <select  name="country"  class="form-control selectTwo" required>
                                                        <option value=""></option>
                                                        @foreach($countries as $country)
														<option value="{{$country->name}}" @if($country->name == optional($currentAddress)->country) selected="selected" @endif>{{$country->name}}</option>
                                                    	@endforeach 	
                                                        
                                                    </select>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Mobile No.<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="mobile" value="{!! old('house',isset($currentAddress->mobile)?$currentAddress->mobile:'')!!}" class="form-control" placeholder="Enter Mobile No" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Landline No.</label>
		                                        
		                                            <input type="text"  name="landline" value="{!! old('landline',isset($currentAddress->landline)?$currentAddress->landline:'')!!}" class="form-control" placeholder="Enter Landline No. " >
		                                        </div>
												<input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
												
												<input type="number" name="type" value="{{1}}"   class="form-control " hidden>

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
		                                            <button type="submit" class="btn btn-success">Save Current Address</button>
		                                            <button type="button" onclick="window.location.href='{{route('employee.index')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    @endcan
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		        		</div>       


		        	</div>
		        </div>
            </div>
        </div>
    </div>
 @push('scripts')
        <script>
           
        </script>
    @endpush

@stop