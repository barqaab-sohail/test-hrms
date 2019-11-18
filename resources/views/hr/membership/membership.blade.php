
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
						 
 
		        		@can('edit record')
		                <div style="margin-top:10px; margin-right: 10px;">
		                  <button type="button"  id ="hideButton"  class="btn btn-info float-right">Add Membership</button>  
		                </div>
		                @endcan
		                 
 

		                <div class="card-body" id="hideDiv">

		                    <form action="{{route('membership.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" id="membership" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Membership With Professional Society / Autonomous Body</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Name<span class="text_requried">*</span></label>
		                                        
		                                            <select  name="name" id="name"    class="form-control selectTwo" required>
                                                        <option value=""></option>
                                                        <option value="PEC"  {{ old('name') == "PEC" ? 'selected' : '' }}>PEC </option>
                                                        <option value="Other"  {{ old('name') == "Other" ? 'selected' : '' }}>Other </option>
                                                    </select>
                                                     
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Membership No.</label>
		                                        
		                                            <input type="text" name="membership_no" value="{{ old('membership_no') }}" class="form-control " placeholder="Enter Membership No ">
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-7 date_input">
		                                        	<label class="control-label text-right ">Expiry Date</label>
		                                        
		                                            <input type="text"  id="expiry_date"  name="expiry_date"  value="{{ old('expiry_date') }}" class="form-control" readonly >
													 
 
		                                            @can('edit record')
		                                            <br>
		                                            <i  class="fas fa-trash-alt text_requried"></i>
		                                            @endcan
		                                             
 

		                                        </div>
		                                       
		                                       <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
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
		                                        @can('edit record')
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Save</button>
		                                        @endcan
		                                            
		                                        </div>
		                                         
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		                </div>
	@if($membershipIds->count()!=0)		                    
	@include ('hr.membership.list')
		
	
	@endif
			                           
		        	</div>
		        </div>
            </div>
        </div>
    </div>
 @push('scripts')
        <script>
            $(document).ready(function(){
			
				$("#name").change(function (){
					var other = $('#name').val();
						if (other != 'PEC'){
						var name=prompt("Enter Membership Name");
						var select = $('#name');
						select.empty().append(new Option(name, name, true, true),new Option('PEC', 'PEC'));
							
						}
				});

				$("#membership").submit(function(e) {
					var name = $('#name').val();

					if (name=='null'){
						alert('null Value is not accepted');
						e.preventDefault();
					}

				});

				
			
			
			});
        </script>
    @endpush

@stop