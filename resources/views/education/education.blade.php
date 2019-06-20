
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

		                    <form id="education" action="{{route('storeEducation')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Education</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Degree Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="degree_name" value="{{ old('degree_name') }}" class="form-control" placeholder="Enter Degree Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Institute Name</label>
		                                        <div class="col-md-9">
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
		                                        <label class="control-label text-right col-md-3">Marks Obtain</label>
		                                        <div class="col-md-3">
		                                            <input type="text" id="marks_obtain" name="marks_obtain" value="{{ old('marks_obtain') }}"   class="form-control " required>
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Total Marks</label>
		                                        <div class="col-md-3">
		                                            <input type="text" id="total_marks" name="total_marks" value="{{ old('total_marks') }}"   class="form-control " required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">	
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-3">Level of Degree</label>
		                                        <div class="col-md-3">
		                                            
													<select  name="level"  class="form-control" required>

													<option value=""></option>
													@for ($i = 5; $i < 21; $i++)
    												<option value="{{$i}}">{{ $i }}</option>
													@endfor

													</select>


		                                        </div>
		                                         <label class="control-label text-right col-md-3">Passing Year</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="completion" value="{{ old('completion') }}"   class="form-control " required> 
													



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
		                                        <label class="control-label text-right col-md-3">From</label>
		                                        <div class="col-md-6">
		                                            <input type="text" id="from" name="from" value="{{ old('from') }}" class="form-control" readonly required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">To</label>
		                                        <div class="col-md-6">
		                                            <input type="text" id="to" name="to" value="{{ old('to') }}" class="form-control " readonly required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Grade</label>
		                                        <div class="col-md-6">
		                                            <input type="text"  name="grade" value="{{ old('grade') }}" class="form-control" placeholder="Enter Grade" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Country</label>
		                                        <div class="col-md-7">
		                                          <select  name="country"  class="form-control" required>
                                                        
                                                        @foreach($countries as $country)
														<option value="{{$country->id }}">{{$country->name}}</option>
                                                        @endforeach
                                                        
                                                    </select>


		                                      
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
		                                            <button type="submit" class="btn btn-success">Add Education</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
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
						@if(Auth::user()->role_id==1)<th> Actions </th> @endif
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
								@if(Auth::user()->role_id==1)
								 <a class="btn btn-info btn-sm" href="{{route('education.edit',['id'=>$educationId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								  <a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deleteEducation',['id'=>$educationId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>
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
            $( function() {
			    $( "#from, #to" ).datepicker({
			      dateFormat: 'yy-M-dd',
			      yearRange: '1960:'+ (new Date().getFullYear()),
			      changeMonth: true,
			      changeYear: true
			    });
		    });

		    $('select').select2({
  			maximumSelectionLength: 2,

			});
		
        </script>
    @endpush

@stop