@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
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
						 
 
		        		@can('hr_edit_record')
		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button"  id ="hideButton"  class="btn btn-info float-right">Add Exit</button>
		                </div>
		                 @endcan
 

		                <div class="card-body" id="hideDiv">

		                    <form action="{{route('exit.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                     
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Exit</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-4">
		                                    <div class="form-group row">
												<div class="col-md-12">
		                                        	<label class="control-label text-right">Employee Status<span class="text_requried">*</span></label>

		                                        	 <select  name="employee_status_id"  class="form-control selectTwo" >
		                                        		<option value=""></option>
	                                                    @foreach($status as $status)
														<option value="{{$status->id}}" @if($status->id == $employee->employee_status_id) selected="selected" @endif>{{$status->name}}</option>
	                                                    @endforeach
                                        
                                                    </select>
		                                           
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 date_input">
		                                        	<label class="control-label text-right ">Effective Date<span class="text_requried">*</span></label>

		                                        	<input type="text" id="effective_date" name="effective_date" value="{{ old('effective_date') }}" class="form-control " placeholder="Enter Effective Date" required readonly>
 		                                            <br>
		                                            @can('hr_edit_record')<i class="fas fa-trash-alt text_requried"></i>@endcan
		          									 
		                                        </div>

		                                    </div>
		                                    
		                                </div>
		                                     <!--/span-->
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 date_input">
		                                        	<label class="control-label text-right ">User Login Status<span class="text_requried">*</span></label>

		                                        	<select  name="user_status"  class="form-control selectTwo" >
		                                        		
		                                        		@if(isset($user->user_status))
		                                        		<option value="{{0}}" {{ $user->user_status === 0 ? 'selected' : '' }}>{{'Not Registered'}}</option>
		                                        		<option value="{{1}}" {{ $user->user_status === 1 ? 'selected' : '' }}>{{'Registered'}}</option>
		                                        		<option value="{{2}}" {{ $user->user_status === 2 ? 'selected' : '' }}>{{'Blocked'}}</option>
		                                        		@else
		                                        		<option value="">User Email is not Entered</option>
		                                        		@endif
	                                                   
                                        
                                                    </select>
		          									 
		                                        </div>

		                                    </div>
		                                    <input type="text"  name="employee_id" value="{{session('employee_id')}}
		                                            " class="form-control" hidden >
		                                 </div>
		                                
		                            </div>
		                            <div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group row">
												<div class="col-md-12">
		                                        	<label class="control-label text-right ">Reason<span class="text_requried">*</span></label>
		          									<input type="text"  name="reason" value="{{old('reason')}}" class="form-control" placeholder="Enter Reason">
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group row">
												<div class="col-md-12">
		                                        	<label class="control-label text-right ">Remarks</label>
		          									<input type="text"  name="remarks" value="{{old('remarks')}}" class="form-control" placeholder="Enter Remarks">
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group row">
												<div class="col-md-12">
												@if($managee->count()>0)
												<h3 class="text_requried">He is Manager of following employees, please condisder it before change employee status</h3>
												<ol>
												@foreach($managee as $manage)

												{!!'<li>'.$manage->employee->first_name.' '.$manage->employee->middle_name.' '.$manage->employee->last_name.'</li>'!!}
												@endforeach
												</ol>
												@endif
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
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Save</button>
		                                            
		                                        </div>
		                                         
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>

		                    </form>
		                </div>
@if($exitIds->count()!=0)		                    
	@include('hr.exit.list')
@endif

		        	</div>
		        </div>
            </div>
        </div>
    </div>
 @push('scripts')
        <script>
            

        </script>
    @endpush

@stop