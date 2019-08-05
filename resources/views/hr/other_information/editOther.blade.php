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

		                    <form action="{{route('editOther', ['id'=>$employee->id])}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Other Information</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Driving Licence</label>
		                                        
		                                            <input type="text"  name="driving_licence" value="{!! old('driving_licence',isset($employee->other_information->driving_licence)?$employee->other_information->driving_licence:'')!!}" class="form-control" placeholder="Enter Driving Licence No." >
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Expiry Date</label>
		                                        
		                                            <input type="text"  id="licence_expiry" name="licence_expiry" value="{!! old('licence_expiry',isset($employee->other_information->licence_expiry)?$employee->other_information->licence_expiry:'')!!}" class="form-control" placeholder="Enter Driving Licence Expiry" readonly>
		                                        </div>
		                                    </div>
		                                    
		                                    </div>
		                                </div>
		                            </div>

		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right ">Disability</label>
		                                        
		                                            <input type="text"  name="disability" value="{!! old('disability',isset($employee->other_information->disability)?$employee->other_information->disability:'')!!}" class="form-control" placeholder="Enter Disability Detail" >
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right ">Blood Group<span class="text_requried">*</span></label>
		                                        
		                                            <select  name="blood_group"  class="form-control" required>
                                                        <option value=""></option>
                                                        @foreach($blood_groups as $blood_group)
															<option value="{{$blood_group->id}}"
															@if(!empty($employee->other_information->blood_group))
																@if($blood_group->id == $employee->other_information->blood_group) selected="selected" @endif
															@endif
															>{{$blood_group->name}}</option>
														@endforeach
                                                                                                               
                                                    </select>

		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>

		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right ">Passport No</label>
		                                        
		                                            <input type="text"  name="passport_no" value="{!! old('passport_no',isset($employee->other_information->passport_no)?$employee->other_information->passport_no:'')!!}" class="form-control" placeholder="Enter Passport No." >
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right ">Expiry Date</label>
		                                        
		                                            <input type="text"  id="passport_expiry" name="passport_expiry" value="{!! old('passport_expiry',isset($employee->other_information->passport_expiry)?$employee->other_information->passport_expiry:'')!!}" class="form-control" placeholder="Enter Passport Expiry" readonly>
		                                        </div>
		                                    </div>
		                                    <input type="text"  name="employee_id" value="{{session('employee_id')}}
		                                            " class="form-control" hidden >
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
		                                            <button type="submit" class="btn btn-success">Save</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
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
        $(document).ready(function(){
        	 $( "#passport_expiry, #licence_expiry" ).datepicker({
		      dateFormat: 'dd-MM-yy',
		      yearRange:  new Date().getFullYear()+':'+(new Date().getFullYear()+15),
		      changeMonth: true,
		      changeYear: true
		    });
            
        });
        </script>
    @endpush

@stop