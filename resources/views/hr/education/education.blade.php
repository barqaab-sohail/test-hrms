
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
		                    
		                    
		                </div>
		                 
 

		                <div class="card-body">

		                    <form id="education" action="{{route('education.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Education</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Degree Name<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="degree_name" value="{{ old('degree_name') }}" class="form-control" placeholder="Enter Degree Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Institute Name<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="institute" value="{{ old('institute') }}" class="form-control " placeholder="Enter Institute Name" required>
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
		                                        	<label class="control-label text-right">Marks Obtain</label>
		                                        
		                                            <input type="text" id="marks_obtain" name="marks_obtain" value="{{ old('marks_obtain') }}"   class="form-control " >
		                                        </div>
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right">Total Marks</label>
		                                        
		                                            <input type="text" id="total_marks" name="total_marks" value="{{ old('total_marks') }}"   class="form-control " >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">	
		                                    <div class="form-group row">
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right ">Level of Degree<span class="text_requried">*</span></label>
		                                        
		                                            
													<select  name="level"  class="form-control selectTwo" required>

													<option value=""></option>
													@for ($i = 5; $i < 21; $i++)
    												<option value="{{$i}}">{{ $i }}</option>
													@endfor

													</select>


		                                        </div>
		                                        
		                                        <div class="col-md-3">
		                                            <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                             </div>
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        
		                                        <div class="col-md-6">
		                                           <label>Degree Start Month</label>
		                                           <select  name="from_month"  id="from_month" class="form-control selectTwo" >
                                                        <option value=""></option>
                                                        @for($m=1; $m<=12; ++$m){
                                                        <option value="{{date('F', mktime(0, 0, 0, $m, 1))}}"> {{date('F', mktime(0, 0, 0, $m, 1))}}</option>
														@endfor
                                                   
                                                    </select>

		                                        </div>
		                                        <div class="col-md-3">
		                                        <label>Year</label>
		                                            <select  name="from_year"  id="from_year" class="form-control selectTwo" >

													<option value=""></option>
													@for ($i = (date('Y')-65); $i < (date('Y')+1); $i++)
    												<option value="{{$i}}">{{ $i }}</option>
													@endfor
													</select>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        
		                                        <div class="col-md-7">
		                                         <label>Degree Completion Month</label>
		                                           <select  name="to_month"  id="to_month"class="form-control selectTwo">
                                                        <option value=""></option>
                                                        @for($m=1; $m<=12; ++$m){
    													<option value="{{date('F', mktime(0, 0, 0, $m, 1))}}"> {{date('F', mktime(0, 0, 0, $m, 1))}}</option>
														@endfor
                                                        
                                                    </select>

		                                        </div>
		                                        <div class="col-md-3">
		                                         <label>Year<span class="text_requried">*</span></label>
		                                            <select  name="to_year" id="to_year"  class="form-control selectTwo" required>

													<option value=""></option>
													@for ($i = (date('Y')-65); $i < (date('Y')+1); $i++)
    												<option value="{{$i}}">{{ $i }}</option>
													@endfor
													</select>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-4">
		                                        	<label class="control-label text-right">Grade</label>
		                                        
		                                            <input type="text"  name="grade" value="{{ old('grade') }}" class="form-control" placeholder="Enter Grade" >
		                                        </div>
		                                        <div class="col-md-2">
		                                        </div>

		                                         <div class="col-md-6">
		                                        	<label class="control-label text-right">Country<span class="text_requried">*</span></label>
		                                        
		                                          <select  name="country_id"  class="form-control selectTwo" required>
                                                        <option value=""></option>
                                                        @foreach($countries as $country)
														<option value="{{$country->id }}">{{$country->name}}</option>
                                                        @endforeach
                                                        
                                                    </select>


		                                      
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">

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
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Add Education</button>
		                                            @endcan
		                                        </div>
		                                         
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
	@if($educationIds->count()!=0)		                    
	@include('hr.education.list')
	
	@endif
			                    
		        		</div>       
		        	</div>
		        </div>
            </div>
        </div>
    </div>
 @push('scripts')
        
        <script>
            $(document).ready(function() {

            	$('#education').submit(function(e) {
	    		
	    		var months = [
    			'','January', 'February', 'March', 'April', 'May',
    			'June', 'July', 'August', 'September',
    			'October', 'November', 'December' ];

    			function monthNameToNum(monthname) {
 				var month = months.indexOf(monthname);
    			return month ? month + 1 : 0;
				}
				
				var fromYear = $('#from_year').val();
				var toYear = $('#to_year').val();
				var fromMonth = $('#from_month').val();
				var toMonth = $('#to_month').val();

				if (fromYear>toYear)
				{
					alert('From Year is Greater Than To');
					e.preventDefault();
				} else if (fromYear==toYear){
					

					var monthValue = monthNameToNum(toMonth)-monthNameToNum(fromMonth);
					
					if(monthValue<0){
						alert('From Month is Greater Than To');
						e.preventDefault();
					}
					
				}

				var marksObtain = parseInt($('#marks_obtain').val());
				var totalMarks = parseInt($('#total_marks').val());
				if(marksObtain>totalMarks){
					alert('Marks Obtain is Greater Than Total Marks');
					e.preventDefault();
				}
			
			});


		    });

		   
        </script>
    @endpush

@stop