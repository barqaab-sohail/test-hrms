
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

		                    <form action="{!!route('editSalary', ['id'=>$employee->id])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Salary</h3>
		                            <hr class="m-t-0 m-b-40">
		                            		                                
		                            <!--/row-->
		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Basic Pay</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="basic_pay" value="{!! old('basic_pay',isset($employee->salary->basic_pay)?$employee->salary->basic_pay:'')!!}"class="form-control prc" required>
		                                        </div>
		                                         <label class="control-label text-right col-md-3">House Rent</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="house_rent" value="{!! old('house_rent',isset($employee->salary->house_rent)?$employee->salary->house_rent:'')!!}"   class="form-control prc" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-3">Dearness Allowance</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="dearness_allowance" value="{!! old('dearness_allowance',isset($employee->salary->dearness_allowance)?$employee->salary->dearness_allowance:'')!!}"   class="form-control prc"  >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Adhoc 2009</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="adhoc_2009" value="{!! old('adhoc_2009',isset($employee->salary->adhoc_2009)?$employee->salary->adhoc_2009:'')!!}"  class="form-control prc" >
                                            
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
		                                            <input type="number" name="adhoc_2010" value="{!! old('adhoc_2010',isset($employee->salary->adhoc_2010)?$employee->salary->adhoc_2010:'')!!}"   class="form-control prc" >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Adhoc 2012</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="adhoc_2012" value="{!! old('adhoc_2012',isset($employee->salary->adhoc_2012)?$employee->salary->adhoc_2012:'')!!}"  class="form-control prc" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-3">Adhoc 2013</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="adhoc_2013" value="{!! old('adhoc_2013',isset($employee->salary->adhoc_2013)?$employee->salary->adhoc_2013:'')!!}"   class="form-control prc"  >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Field Allowance</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="field_allowance" value="{!! old('field_allowance',isset($employee->salary->field_allowance)?$employee->salary->field_allowance:'')!!}"   class="form-control prc" >
		                                            
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
		                                            <input type="number" name="other_allowance" value="{!! old('other_allowance',isset($employee->salary->other_allowance)?$employee->salary->other_allowance:'')!!}" class="form-control prc" >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Total</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="total" id="total" value="{!! old('total',isset($employee->salary->total)?$employee->salary->total:'')!!}"   class="form-control " readonly>
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