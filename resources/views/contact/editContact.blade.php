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

		                    <form action="{{route('editPermanentAddress', ['id'=>$employee->id])}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Permanent Address</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">House No.</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="house" value="{!! old('house',isset($permanentAddress->house)?$permanentAddress->house:'')!!}" class="form-control" placeholder="Enter House Name / No." required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Street No.</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="street" value="{!! old('street',isset($permanentAddress->street)?$permanentAddress->street:'')!!}" class="form-control" placeholder="Enter Street Name / No." >
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Town</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="town" value="{!! old('house',isset($permanentAddress->town)?$permanentAddress->town:'')!!}" class="form-control" placeholder="Enter Town" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">City</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="city" value="{!! old('city',isset($permanentAddress->street)?$permanentAddress->city:'')!!}" class="form-control" placeholder="Enter City Name " required>
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Province</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="province" value="{!! old('house',isset($permanentAddress->province)?$permanentAddress->province:'')!!}" class="form-control" placeholder="Enter Province" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Country</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="country" value="{!! old('country',isset($permanentAddress->street)?$permanentAddress->country:'')!!}" class="form-control" placeholder="Enter Country Name " required>
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Mobile No.</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="mobile" value="{!! old('house',isset($permanentAddress->mobile)?$permanentAddress->mobile:'')!!}" class="form-control" placeholder="Enter Mobile No" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Landline No.</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="landline" value="{!! old('landline',isset($permanentAddress->street)?$permanentAddress->landline:'')!!}" class="form-control" placeholder="Enter Landline No. " required>
		                                        </div>
												<input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
												
												<input type="number" name="type" value="0"   class="form-control " hidden>


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
		                                            <button type="submit" class="btn btn-success">Save Permanent Address</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
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
		                                        <label class="control-label text-right col-md-3">House No.</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="house" value="{!! old('house',isset($currentAddress->house)?$currentAddress->house:'')!!}" class="form-control" placeholder="Enter House Name / No." required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Street No.</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="street" value="{!! old('street',isset($currentAddress->street)?$currentAddress->street:'')!!}" class="form-control" placeholder="Enter Street Name / No." >
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Town</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="town" value="{!! old('house',isset($currentAddress->town)?$currentAddress->town:'')!!}" class="form-control" placeholder="Enter Town" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">City</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="city" value="{!! old('city',isset($currentAddress->street)?$currentAddress->city:'')!!}" class="form-control" placeholder="Enter City Name " required>
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Province</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="province" value="{!! old('house',isset($currentAddress->province)?$currentAddress->province:'')!!}" class="form-control" placeholder="Enter Province" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Country</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="country" value="{!! old('country',isset($currentAddress->street)?$currentAddress->country:'')!!}" class="form-control" placeholder="Enter Country Name " required>
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Mobile No.</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="mobile" value="{!! old('house',isset($currentAddress->mobile)?$currentAddress->mobile:'')!!}" class="form-control" placeholder="Enter Mobile No" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Landline No.</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="landline" value="{!! old('landline',isset($currentAddress->street)?$currentAddress->landline:'')!!}" class="form-control" placeholder="Enter Landline No. " required>
		                                        </div>
												<input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
												
												<input type="number" name="type" value="1"   class="form-control " hidden>


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
		                                            <button type="submit" class="btn btn-success">Save Current Address</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
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