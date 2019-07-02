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

		                    <form action="{{route('editAgreement', ['id'=>$employee->id])}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Appointment Letter Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Designation</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="designation" value="{!! old('designation',isset($employee->contract->designation)?$employee->contract->designation:'')!!}" class="form-control" placeholder="Enter Designation." required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-2">Date of Joining</label>
		                                        <div class="col-md-7">
		                                            <input type="date"  name="joining_date" value="{!! old('joining_date',isset($employee->contract->joining_date)?$employee->contract->joining_date:'')!!}" class="form-control" placeholder="Enter Joining Date " required>
		                                        </div>
		                                    </div>
		                                    
		                                    </div>
		                                </div>
		                            </div>

		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Name of Project</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="project" value="{!! old('project',isset($employee->contract->project)?$employee->contract->project:'')!!}" class="form-control" placeholder="Enter Name of Project">
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-2">Expiry Date</label>
		                                        <div class="col-md-7">
		                                            <input type="date"  name="expiry_date" value="{!! old('expiry_date',isset($employee->contract->expiry_date)?$employee->contract->expiry_date:'')!!}" class="form-control" placeholder="Enter Joining Date " >

		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>

		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Category</label>
		                                        <div class="col-md-3">
		                                            <select  name="category"  class="form-control" required>
                                                        <option value=""></option>
                                                        @if(isset($employee->contract->category)){
                                                        <option value="A" @if($employee->contract->category == 'A') selected="selected" @endif>A</option>
                                                        <option value="B" @if($employee->contract->category == 'B') selected="selected" @endif>B</option> 
                                                        <option value="C" @if($employee->contract->category == 'C') selected="selected" @endif>C</option> }
                                                        @else
                                                        <option value="A">A</option>
                                                        <option value="B">B</option>
                                                        <option value="C">C</option>
                                                        @endif
                                                    </select>
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Grade</label>
		                                        <div class="col-md-3">
		                                            <select  name="grade"  class="form-control" >
		                                            @if(isset($employee->contract->grade))
		                                            <option value="{{$employee->contract->grade}}">{{$employee->contract->grade}}</option>
		                                            @else
		                                            <option value=""></option>
		                                            @endif

													@for ($i = 1; $i < 15; $i++)
    												<option value="{{$i}}">{{ $i }}</option>
													@endfor
													
		                                            </select>

		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-2">Letter Type</label>
		                                        <div class="col-md-3">
		                                            <select  name="appointment_letter_type"  class="form-control" required>
                                                        <option value=""></option>
                                                        @if(isset($employee->contract->appointment_letter_type)){
                                                        <option value="1 Page" @if($employee->contract->appointment_letter_type == '1 Page') selected="selected" @endif>1 Page</option>
                                                        <option value="2 Pages" @if($employee->contract->appointment_letter_type == '2 Pages') selected="selected" @endif>2 Pages</option>
                                                        
                                                        @else
                                                        <option value="1 Page">One Page</option>
                                                        <option value="2 Pages">Two Pages</option>
                                                        @endif
                                                    </select>
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Contract Type</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="contract_type" value="{!! old('contract_type',isset($employee->contract->contract_type)?$employee->contract->contract_type:'')!!}"  class="form-control">
		                                            <div class="form-group row">
		                                        	<input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
		                                        	</div>
		                                                                                        
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                             </div>
								<hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Save</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		                    <hr>
		                    <br>

		                    <form action="{{route('editSalary', ['id'=>$employee->id])}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">

								<h3 class="box-title">Salary Detail</h3>
		                        <hr>
 									<div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Basic Pay</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="basic_pay" value="{!! old('basic_pay',isset($salary->basic_pay)?$salary->basic_pay:'')!!}"class="form-control prc" >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">House Rent</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="house_rent" value="{!! old('house_rent',isset($salary->house_rent)?$salary->house_rent:'')!!}"   class="form-control prc" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-3">Dearness Allowance</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="dearness_allowance" value="{!! old('dearness_allowance',isset($salary->dearness_allowance)?$salary->dearness_allowance:'')!!}"   class="form-control prc"  >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Adhoc 2009</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="adhoc_2009" value="{!! old('adhoc_2009',isset($salary->adhoc_2009)?$salary->adhoc_2009:'')!!}"  class="form-control prc" >
                                            
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
		                                        <label class="control-label text-right col-md-3">Adhoc 2010</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="adhoc_2010" value="{!! old('adhoc_2010',isset($salary->adhoc_2010)?$salary->adhoc_2010:'')!!}"   class="form-control prc" >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Adhoc 2012</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="adhoc_2012" value="{!! old('adhoc_2012',isset($salary->adhoc_2012)?$salary->adhoc_2012:'')!!}"  class="form-control prc" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-3">Adhoc 2013</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="adhoc_2013" value="{!! old('adhoc_2013',isset($salary->adhoc_2013)?$salary->adhoc_2013:'')!!}"   class="form-control prc"  >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Field Allowance</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="field_allowance" value="{!! old('field_allowance',isset($salary->field_allowance)?$salary->field_allowance:'')!!}"   class="form-control prc" >
		                                            
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
		                                        <label class="control-label text-right col-md-3">Other Allowance</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="other_allowance" value="{!! old('other_allowance',isset($salary->other_allowance)?$salary->other_allowance:'')!!}" class="form-control prc" >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Total</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="total" id="total" value="{!! old('total',isset($salary->total)?$salary->total:'')!!}"   class="form-control " >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
												
		                                        <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
		                                        
		                                    </div>
		                                </div>
		                                <!--/span-->
		                             </div>
		                             <div class="row">
		                                <!--/span-->
		                                <div class="col-md-12">
		                                    <div class="form-group row">
		                                    	<div class="col-md-3">
													<label class="control-label text-right col-md-12">Remakrs</label>
												</div>
												<div class="col-md-7">
			                                        <input type="text"  name="salary_remarks" value="{!! old('remarks',isset($salary->salary_remarks)?$salary->salary_remarks:'')!!}" class="form-control" placeholder="Enter Remarks." required>
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
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Save</button>
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
        	var url = $(location).attr('href');
        	var arguments = url.split('edit/')[1];
//arguments.shift();
//alert(arguments);
            $(document).ready(function(){
				$(".form-group").on("input", ".prc", function() {
		   		var sum = 0;
		    		
		    		$(".form-group .prc").each(function(){
		    		var inputVal = $(this).val();
		    		if ($.isNumeric(inputVal)){
		        	sum += parseFloat(inputVal);
		    		}
		    		});
   			 	
   			 	$("#total").val(sum);
				});
			});
        </script>
    @endpush

@stop