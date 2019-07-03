
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

		                    <form action="{!!route('editPromotion', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Promotion</h3>
		                            <hr class="m-t-0 m-b-40">
		                            		                                
		                             <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Promoted Designation</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="promoted_designation" value="{!! old('promoted_designation', optional($data)->promoted_designation) !!}" class="form-control" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-4">Effective Date</label>
		                                        <div class="col-md-8">
		                                            <input type="date" name="effective_date" value="{!! old('effective_date', optional($data)->effective_date) !!}" class="form-control" required >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>
		                            
		                            <div class="row">
		                             	<div class="col-md-6">
		                            		<div class="form-group row">
												<label class="control-label text-right col-md-3">Remarks</label>
		                            			<div class="col-md-9">
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
		                                        <label class="control-label text-right col-md-3">Basic Pay</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="basic_pay" value="{!! old('basic_pay', optional($data)->basic_pay) !!}"class="form-control prc">
		                                        </div>
		                                         <label class="control-label text-right col-md-3">House Rent</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="house_rent" value="{!! old('hourse_rent', optional($data)->hourse_rent) !!}"   class="form-control prc" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-3">Dearness Allowance</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="dearness_allowance" value="{!! old('dearness_allowance', optional($data)->dearness_allowance) !!}"   class="form-control prc"  >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Adhoc 2009</label>
		                                        <div class="col-md-3">
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
		                                        <label class="control-label text-right col-md-3">Adhoc 2010</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="adhoc_2010" value="{!! old('adhoc_2010', optional($data)->adhoc_2010) !!}"   class="form-control prc" >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Adhoc 2012</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="adhoc_2012" value="{!! old('adhoc_2012', optional($data)->adhoc_2012) !!}"  class="form-control prc" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-3">Adhoc 2013</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="adhoc_2013" value="{!! old('adhoc_2013', optional($data)->adhoc_2013) !!}"   class="form-control prc"  >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Field Allowance</label>
		                                        <div class="col-md-3">
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
		                                        <label class="control-label text-right col-md-3">Other Allowance</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="other_allowance" value="{!! old('other_allowance', optional($data)->other_allowance) !!}" class="form-control prc" >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Total</label>
		                                        <div class="col-md-3">
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
		                                            <button type="submit" class="btn btn-success">Save</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
@if($promotionIds->count()!=0)		                    
<br>
<hr>
<br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Pormotion</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Promoted Designation</th>
						<th>Effective Date</th>
						<th>Revised Salary</th>
						<th>Remarks</th>
						@if(Auth::user()->role_id==1)<th> Actions </th> @endif
					</tr>
					</thead>
					<tbody>
						@foreach($promotionIds as $promotionId)
							<tr>
								<td>{{$promotionId->promoted_designation}}</td>
								<td>{{$promotionId->effective_date}}</td>
								<td>{{$promotionId->total}}</td>
								<td>{{$promotionId->promotion_remarks}}</td>
								<td>
								@if(Auth::user()->role_id==1)
								 <a class="btn btn-info btn-sm" href="{{route('promotion.edit',['id'=>$promotionId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								  <a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deletePromotion',['id'=>$promotionId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>
								 @endif
															
							</tr>
						@endforeach
					
					 
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
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