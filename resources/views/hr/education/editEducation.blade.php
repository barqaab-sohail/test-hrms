
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

		                    <form id="education" action="{!!route('editEducation', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Edit Education</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Degree Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="degree_name" value="{!! old('degree_name', optional($data)->degree_name) !!}"class="form-control" placeholder="Enter Degree Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Institute Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="institute" value="{!! old('institute', optional($data)->institute) !!}" class="form-control " placeholder="Enter Institute Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Marks Obtain</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="marks_obtain" value="{!! old('marks_obtain', optional($data)->marks_obtain) !!}"   class="form-control " >
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Total Marks</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="total_marks" value="{!! old('total_marks', optional($data)->total_marks) !!}"   class="form-control " >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">	
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-3">Level of Degree</label>
		                                        <div class="col-md-2">
		                                            <select  name="level"  class="form-control" required>

													<option value=""></option>
													@for ($i = 5; $i < 21; $i++)
    												<option value="{{$i}}"
													@if($i == $data->level) selected="selected" @endif
    												>{{ $i }}</option>
													@endfor

													</select>
		                                        </div>
		                                         
		                                        <div class="col-md-3">
													
	                                            
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                             </div>
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
												<label class="control-label text-right col-md-3">Degree From</label>
		                                        <div class="col-md-5">
		                                           <label>Month</label>
		                                           <select  name="from_month"  class="form-control" >
                                                        <option value=""></option>
                                                        @for($m=1; $m<=12; ++$m){
    													<option value="{{date('F', mktime(0, 0, 0, $m, 1))}}" @if(date('F', mktime(0, 0, 0, $m, 1))==$data->from_month) selected="selected" @endif> {{date('F', mktime(0, 0, 0, $m, 1))}}</option>
														@endfor
                                                        
                                                    </select>

		                                        </div>
		                                        <div class="col-md-3">
		                                        <label>Year</label>
		                                            <select  name="from_year"  class="form-control" >

													<option value=""></option>
													@for ($i = (date('Y')-60); $i < (date('Y')+1); $i++)
													<option value="{{$i}}"
													@if($i == $data->from_year) selected="selected" @endif
													>{{ $i }}</option>
													@endfor
													</select>
		                                        </div>

		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Degree <br>To</label>
		                                        <div class="col-md-5">
		                                           <label>Month</label>
		                                           <select  name="to_month"  class="form-control" >
                                                        <option value=""></option>
                                                        @for($m=1; $m<=12; ++$m){
    													<option value="{{date('F', mktime(0, 0, 0, $m, 1))}}" @if(date('F', mktime(0, 0, 0, $m, 1))==$data->to_month) selected="selected" @endif> {{date('F', mktime(0, 0, 0, $m, 1))}}</option>
														@endfor
                                                        
                                                    </select>

		                                        </div>
		                                        <div class="col-md-3">
		                                        <label>Year</label>
		                                            <select  name="to_year"  class="form-control" required>

													<option value=""></option>
													@for ($i = (date('Y')-60); $i < (date('Y')+1); $i++)
													<option value="{{$i}}"
													@if($i == $data->to_year) selected="selected" @endif
													>{{ $i }}</option>
													@endfor
													</select>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Grade</label>
		                                        <div class="col-md-5">
		                                            <input type="text"  name="grade" value="{!! old('grade', optional($data)->grade) !!}" class="form-control" placeholder="Enter Grade" >
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Country</label>
		                                        <div class="col-md-6">


													<select  name="country"  class="form-control" required>
		                                           	<option value=""></option>
		                                           	@foreach($countries as $country)
													<option value="{{$country->name}}" @if($country->name == $data->country) selected="selected" @endif>{{$country->name}}</option>
                                                    @endforeach 	
                                                    </select>

		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                          
		                           
		                        </div>
		                        @if(Auth::user()->role_id==1)
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">

		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Edit Education</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        @endif
		                    </form>
		
		@if($educationIds->count()!=0)                    
			                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
		
			<h2 class="card-title">Stored Education</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Degree Name</th>
						<th>Institute</th>
						<th>Completion Year</th>
						<th>Grade</th>
						<th> Actions </th>
					</tr>
					</thead>
					<tbody>
						@foreach($educationIds as $educationId)
							<tr>
								<td>{{$educationId->degree_name}}</td>
								<td>{{$educationId->institute}}</td>
								<td>{{$educationId->completion}}</td>
								<td>{{$educationId->grade}}</td>
								<td>
								
								 <a class="btn btn-info btn-sm" href="{{route('education.edit',['id'=>$educationId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 <a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deleteEducation',['id'=>$educationId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>
															
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
            $(document).ready(function() {
            	

            	$('#education').submit(function(e) {

            	var marksObtain = $('#marks_obtain').val();
				var totalMarks = $('#total_marks').val();
				if(marksObtain>totalMarks){
					alert('Marks Obtain is Greater Than Total Marks');
					e.preventDefault();
				}
	    		
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

				
			
			});


		    });

		    $('select').select2({
  			maximumSelectionLength: 2,

			});
		
        </script>
    @endpush

@stop