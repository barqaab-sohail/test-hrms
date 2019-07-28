@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor"></h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
		
		
	</ol>
@stop
@section('content')
   
    <div class="row">
        <div class="col-lg-12">
						
            <div class="card card-outline-info">
		                <div class="card-body">
							<div style="margin-top:10px; margin-right: 10px;">
			                    <button type="button" onclick="window.location.href='{{route('notificationList')}}'" class="btn btn-info float-right">List</button>
			                </div>

		                    <form action="{{route('storeNotification')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                        <h3 class="box-title">Create Notification</h3>
		                            <hr class="m-t-0 m-b-40">
		                            
		                                <div class="form-group row">
		                                    <label class="control-label text-right col-md-2">To</label>
		                                    <div class="col-md-4">

		                                    	<select  name="to"  class="form-control" required>
		                                           	<option value="all">All Active User</option>
		                                           	<option value="allManagers">All Managers</option>
		                                           	@foreach($employees as $employee)
													<option value="{{$employee->id}}" {{(old("to")==$employee->first_name." ".$employee->last_name? "selected" : "")}}>{{$employee->first_name." ".$employee->last_name}}</option>
                                                    @endforeach 	
                                                </select> 
                                            </div>
		                                </div>

		                                <div class="form-group row">
		                                    <label class="control-label text-right col-md-2">Subject</label>
		                                    <div class="col-md-10">
		                                        <input type="text"  name="subject" value="{{old('subject')}}" class="form-control" placeholder="Enter Subject of Notification" required>
		                                    </div>
		                                </div>
		                        
									
		                                <div class="form-group row">
		                                    <label class="control-label text-right col-md-2">Message</label>
		                                    <div class="col-md-10">
		                                        <textarea name="message" rows=8 class="form-control" placeholder="Enter Message of Notification"  >{!! old('message') !!}</textarea>
		                                        

		                                    </div>
		                                </div>
		                            
		                        </div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Submit</button>
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
 @push('scripts')
        <script>
            $(document).ready(function(){
	  			
            });
        </script>
    @endpush

@stop