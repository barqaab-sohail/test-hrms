
@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Human Resource</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)">Salary</a></li>
	
		
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
		                    <button type="button" onclick="window.location.href='{{route('userList')}}'" class="btn btn-info float-right">Back</button>
		                    
		                </div>
		                <div class="card-body">

		                    <form action="{!!route('editSalary', ['id'=>optional($data)->basic_pay])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
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
		                                            <input type="number" name="basic_pay" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"   class="form-control prc" required>
		                                        </div>
		                                         <label class="control-label text-right col-md-3">House Rent</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="house_rent" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"   class="form-control prc" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-3">Dearness Allowance</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="dearness_allowance" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"   class="form-control prc"  required>
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Adhoc 2009</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="adhoc_2009" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"   class="form-control prc" required>
                                            
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
		                                            <input type="number" name="adhoc_2010" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"   class="form-control prc" required>
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Adhoc 2012</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="adhoc_2012" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"   class="form-control prc" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-3">Adhoc 2013</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="adhoc_2013" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"   class="form-control prc"  required>
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Field Allowance</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="field_allowance" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"   class="form-control prc" required>
		                                            
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
		                                            <input type="number" name="other_allowance" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"   class="form-control prc" required>
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Total</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="total" id="total" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"   class="form-control " readonly>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                         
		                                             <input type="number" name="user_id" value="{{session('user_id')}}"   class="form-control " hidden>
		                                        
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
		                                            <button type="submit" class="btn btn-success">Edit Salary</button>
		                                            <button type="button" onclick="window.location.href='{{route('userList')}}'" class="btn btn-inverse">Cancel</button>
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