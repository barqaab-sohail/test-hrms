@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Employee Name: {{$employee->first_name. " ".$employee->last_name}} </h3>
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

		                    <form action="{{route('editEmployee', ['id'=>$employee->id])}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Employee Information</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">First Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="first_name" value="{{old('first_name', $employee->first_name)}}"   class="form-control" placeholder="Enter First Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Middle Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="middle_name" value="{{old('middle_name', $employee->middle_name) }}" class="form-control " placeholder="Enter Middle Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Last Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="last_name" value="{{old('last_name', $employee->last_name) }}"    class="form-control " placeholder="Enter Last Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Father Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="father_name" value="{{ old('father_name', $employee->father_name) }}" class="form-control " placeholder="Enter Father Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>
		                            <!--/row-->
		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Date of Birth</label>
		                                        <div class="col-md-9">
		                                            <input type="date" name="date_of_birth" value="{{ old('date_of_birth', $employee->date_of_birth) }}" class="form-control " placeholder="Enter Date of Birth" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Gender</label>
		                                        <div class="col-md-9">
		                                            <div class="col-md-9">
		                                           	 <select  name="gender"  class="form-control" required>
                                                        <option value="{{ old('gender', $employee->gender) }}">{{$employee->gender}}</option>
                                                        <option value="Male">Male</option>
                                                        <option value="Female">Female</option>
                                                    </select>
		                                            
		                                        </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>
		                            <!--/row-->
		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">CNIC</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="cnic" value="{{ old('cnic', $employee->cnic) }}" class="form-control " placeholder="Enter CNIC without dash" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">CNIC Expiry</label>
		                                        <div class="col-md-9">
		                                            <div class="col-md-9">
		                                            <input type="date" name="cnic_expiry" value="{{ old('cnic_expiry',$employee->cnic_expiry) }}" class="form-control " required>
		                                        </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                
		                            </div>
		                            <!--/row-->

		                            
		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Employee No.</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="employee_no" value="{{ old('employee_no',$employee->employee_no) }}" class="form-control " placeholder="Enter Employee No" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Marital Status</label>
		                                        <div class="col-md-9">
		                                            <div class="col-md-9">
		                                           	 <select  name="marital_status"  class="form-control" required>
                                                        
                                                        @foreach($maritalStatuses as $maritalStatus)
														
														<option value="{{$maritalStatus->id}}" @if($maritalStatus->id == $employee->marital_status) selected="selected" @endif>{{$maritalStatus->name}}</option>                                                        
                                                        @endforeach
                                                        
                                                    </select>
		                                            
		                                        </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>
		                        <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Religon</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="religon" value="{{ old('religon',$employee->religon) }}" class="form-control " placeholder="Enter Religon" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Nationality</label>
		                                        <div class="col-md-9">
		                                            <div class="col-md-9">
		                                           	 <input type="text" name="nationality" value="{{ old('nationality',$employee->religon) }}" class="form-control " placeholder="Enter Nationality" required>
		                                            
		                                        </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>
								     <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Department</label>
		                                        <div class="col-md-9">
		                                            <div class="col-md-9">
		                                           	 <select  name="department_id"  class="form-control" required>
                                                        <option value=""></option>
                                                        @foreach($departments as $department)
														<option value="{{$department->id}}" @if($department->id == $employee->department_id) selected="selected" @endif>{{$department->name}}</option>                                     @endforeach
                                                                                                               
                                                    </select>
		                                            
		                                        </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>


		                        </div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Add Employee</button>
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