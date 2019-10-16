
@extends('layouts.master.master')
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
						 
 

		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('employee.index')}}'" class="btn btn-info float-right">Back</button>
		                  
		                </div>
		                 
 

		                <div class="card-body">

		                    <form action="{!!route('promotion.update', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                    @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Promotion</h3>
		                            <hr class="m-t-0 m-b-40">
		                            		                                
		                             <div class="row">
		                                <!--/span-->
		                                <div class="col-md-8">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Promoted Designation<span class="text_requried">*</span></label>
		                                        	<select  name="designation_id"  class="form-control selectTwo" required>
                                                      <option></option>
                                                     @foreach($designations as $designation)
														
														<option value="{{$designation->id}}" @if($designation->id == optional($data)->designation_id)) selected="selected" @endif>{{$designation->name}}</option>
                                                        @endforeach
                                                        
                                                    </select>
		                                           
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 date_input">
		                                        	<label class="control-label text-right">Effective Date<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" id="effective_date" name="effective_date" value="{!! old('effective_date', optional($data)->effective_date) !!}" class="form-control" readonly required >
													 
 

		                                            <br>
		                                            <i id="clearEffectiveDate" class="fas fa-trash-alt text_requried"></i>
		                                             
 

		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>
		                            
		                            <div class="row">
		                             	<div class="col-md-12">
		                            		<div class="form-group row">
												<div class="col-md-12">
													<label class="control-label text-right">Remarks</label>
		                            			
		                            				<input type="text" name="promotion_remarks" value="{!! old('promotion_remarks', optional($data)->promotion_remarks) !!}" class="form-control"  >
		                            			</div>

		                            		</div>
		                            	</div>

		                            </div>		                               


		                            <!--/row-->
		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right">Basic Pay</label>
		                                        
		                                            <input type="number" name="basic_pay" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"class="form-control prc">
		                                        </div>
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right">House Rent</label>
		                                        
		                                            <input type="number" name="house_rent" value="{!! old('hourse_rent', optional($data)->hourse_rent) !!}"   class="form-control prc" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right">Dearness Allowance</label>
		                                        
		                                            <input type="number" name="dearness_allowance" value="{!! old('dearness_allowance', optional($data)->dearness_allowance) !!}"   class="form-control prc"  >
		                                        </div>
		                                        <div class="col-md-6">
		                                        <label class="control-label text-right ">Adhoc 2009</label>
		                                        
		                                            <input type="number" name="adhoc_2009" value="{!! old('adhoc_2009', optional($data)->adhoc_2009) !!}"  class="form-control prc" >
                                            
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
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right">Adhoc 2010</label>
		                                        
		                                            <input type="number" name="adhoc_2010" value="{!! old('adhoc_2010', optional($data)->adhoc_2010) !!}"   class="form-control prc" >
		                                        </div>
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right">Adhoc 2012</label>
		                                        
		                                            <input type="text" name="adhoc_2012" value="{!! old('adhoc_2012', optional($data)->adhoc_2012) !!}"  class="form-control prc" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right ">Adhoc 2013</label>
		                                        
		                                            <input type="number" name="adhoc_2013" value="{!! old('adhoc_2013', optional($data)->adhoc_2013) !!}"   class="form-control prc"  >
		                                        </div>
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right ">Field Allowance</label>
		                                        
		                                            <input type="number" name="field_allowance" value="{!! old('field_allownace', optional($data)->field_allownace) !!}"   class="form-control prc" >
		                                            
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
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right">Other Allowance</label>
		                                        
		                                            <input type="number" name="other_allowance" value="{!! old('other_allowance', optional($data)->other_allowance) !!}" class="form-control prc" >
		                                        </div>
		                                        <div class="col-md-6">
		                                        
		                                        	<label class="control-label text-right ">Total<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="total" id="total" value="{!! old('total', optional($data)->total) !!}"   class="form-control" required>
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
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Save</button>
		                                            <button type="button" onclick="window.location.href='{{route('employee.index')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                     
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
@if($promotionIds->count()!=0)		                    

@include('hr.promotion.list')	

@endif
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