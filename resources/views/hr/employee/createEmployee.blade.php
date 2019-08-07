@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Human Resource</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)">New Employee</a></li>
		
		
	</ol>
@stop
@section('content')


    <div class="row">
        <div class="col-lg-12">

            <div class="card card-outline-info">
			
				<div class="row">
					<div class="col-lg-2">
					@include('layouts.master.hrVerticalButton')
					</div>
        	
		        	<div class="col-lg-10">
						@can('entry', Auth::user())
		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-info float-right">Back</button>
		                </div>
		                @endcan
		                <div class="card-body">

		                    <form action="{{route('storeEmployee')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Employee Information</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">First Name<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="first_name" value="{{ old('first_name') }}"  class="form-control" placeholder="Enter First Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Middle Name</label>
		                                        
		                                            <input type="text" name="middle_name" value="{{ old('middle_name') }}" class="form-control " placeholder="Enter Middle Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Last Name<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="last_name" value="{{ old('last_name') }}"   class="form-control " placeholder="Enter Last Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Father Name<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="father_name" value="{{ old('father_name') }}" class="form-control " placeholder="Enter Father Name" required>
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
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Date of Birth<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" id="date_of_birth" name="date_of_birth" value="{{ old('date_of_birth') }}" class="form-control " placeholder="Enter Date of Birth" required readonly><br>
		                                            <i id="clearBirthDate" onclick="return confirm('Are you sure to clear date')" class="fas fa-trash-alt text_requried"></i> 
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-8">
		                                        	<label class="control-label text-right">Gender<span class="text_requried">*</span></label>
		                                        
		                                           	 <select  name="gender"  class="form-control" required>
                                                        <option value=""></option>
                                                        <option value="Male"  {{ old('gender') == "Male" ? 'selected' : '' }}>Male </option>
                                                        <option value="Female"  {{ old('gender') == "Female" ? 'selected' : '' }}>Female </option>
                                                        
                                                    </select>
		                                        	                                        
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
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">CNIC<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="cnic" pattern="[0-9]{13}" title= "13 digit Number without dash" value="{{ old('cnic') }}" class="form-control " placeholder="Enter CNIC without dash" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">CNIC Expiry<span class="text_requried">*</span></label>
		                                            
		                                            <input type="text" id="cnic_expiry" name="cnic_expiry" value="{{ old('cnic_expiry') }}" class="form-control "  placeholder="Enter CNIC Expiry Date" readonly required><br>
		                                            <i id="clearCNICExpiryDate" onclick="return confirm('Are you sure to clear date')" class="fas fa-trash-alt text_requried"></i>
		                                        
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
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Employee No.</label>
		                                        
		                                            <input type="text" name="employee_no" value="{{ old('employee_no') }}" class="form-control " placeholder="Enter Employee No" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                       	<div class="col-md-8">

		                                        	<label class="control-label text-right">Marital Status<span class="text_requried">*</span></label>
		                                       
		                                           	<select  name="marital_status"  class="form-control" required>
                                                        <option value=""></option>
                                                        @foreach($maritalStatus as $maritalStatus)
														<option value="{{$maritalStatus->name}}" {{(old("marital_status")==$maritalStatus->name? "selected" : "")}}>{{$maritalStatus->name}}</option>
                                                        @endforeach
                                                      
                                                    </select>
		                                            
		                                     
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>
		                        <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Religon<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="religon" value="{{ old('religon') }}" class="form-control " placeholder="Enter Religon" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
												<div class="col-md-10">
		                                        	<label class="control-label text-right">Nationality<span class="text_requried">*</span></label>
		                                           	<select  name="nationality_name"  class="form-control" required>
			                                           	<option value=""></option>
			                                        @foreach($countries as $country)
														<option value="{{$country->name}}" {{(old("nationality_name")==$country->name? "selected" : "")}}>{{$country->name}}</option>
                                                    @endforeach 	
                                                    </select> 
		                                        </div>
		                                        <div class="col-md-2"><br>
		                                       		<button type="button" name="add" id="add" class="btn btn-success">+</button>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>
								     <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-8">
		                                        	<label class="control-label text-right">Division<span class="text_requried">*</span></label>
		                                        	<select  name="division_id"  class="form-control" required>
                                                        <option value=""></option>
                                                        @foreach($divisions as $division)
														<option value="{{$division->id}}" {{(old("division_id")==$division->id? "selected" : "")}}>{{$division->name}}</option>								
                                                        @endforeach
                                                                                                               
                                                    </select>
		                                        </div>
		                                    </div> 
		                                </div>

		                                <div id="nationality2" class="col-md-6">
		                   					<div class="form-group row">
		                                        <div class="col-md-10">
		                                    	    <label class="control-label text-right ">Nationality-2</label>
		                                        
		                                           <select  name="nationality_name2"  class="form-control" >
		                                           	<option value=""></option>
		                                           	@foreach($countries as $country)
													<option value="{{$country->name}}" {{(old("nationality_name2")==$country->name? "selected" : "")}}>{{$country->name}}</option>
                                                    @endforeach 	
                                                    </select>
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
		                                    @can('entry', Auth::user())
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Add Employee</button>
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
		

	    $( function() {
		    $( "#date_of_birth" ).datepicker({
		      dateFormat: 'dd-MM-yy',
		      yearRange: '1940:'+ (new Date().getFullYear()-15),
		      changeMonth: true,
		      changeYear: true
		    });
		    $( "#cnic_expiry" ).datepicker({
		      dateFormat: 'dd-MM-yy',
		      yearRange:  new Date().getFullYear()+':'+(new Date().getFullYear()+15),
		      changeMonth: true,
		      changeYear: true
		    });

		    
	  	});

	  	
	    $("#nationality2").hide();
	    $("#add").click (function(){
		$("#nationality2").toggle();
	  	});

	  	//Clear Date of Birth
				if($("#date_of_birth").val()==''){
            		$("#clearBirthDate").hide();

            	}else{
            		$("#clearBirthDate").show();
	            		   		$("#clearBirthDate").click(function(){
					    		$("#date_of_birth").val("");
					    		$("#clearBirthDate").hide();
					 });

            	}

            	$("#date_of_birth").change(function(){
		    		$("#clearBirthDate").show();
		    		$("#clearBirthDate").click(function(){
		    		$("#date_of_birth").val("");
		    		$("#clearBirthDate").hide();
		    		});

		    	});
            	
            	//Clear CNIC Expiry
            	if($("#cnic_expiry").val()==''){
            		$("#clearCNICExpiryDate").hide();

            	}else{
            		$("#clearCNICExpiryDate").show();
	            		   		$("#clearCNICExpiryDate").click(function(){
					    		$("#cnic_expiry").val("");
					    		$("#clearCNICExpiryDate").hide();
					 });

            	}

            	$("#cnic_expiry").change(function(){
		    		$("#clearCNICExpiryDate").show();
		    		$("#clearCNICExpiryDate").click(function(){
		    		$("#cnic_expiry").val("");
		    		$("#clearCNICExpiryDate").hide();
		    		});

		    	});
	});
</script>

        

    @endpush

@stop