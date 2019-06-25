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
                   
		                       
		                        <div class="form-body">
		                        <h3 class="box-title">Notification</h3>
		                            <hr class="m-t-0 m-b-40">
		                            
		                                <div class="form-group row">
		                                    <label class="control-label text-right col-md-2">Created Date:</label>
		                                    <div class="col-md-9">
		                                        {{date('d-M-Y',strtotime($notification->created_at))}}
		                                    </div>
		                                </div>

		                                <div class="form-group row">
		                                    <label class="control-label text-right col-md-2">Subject:</label>
		                                    <div class="col-md-9" >
		                                        {{$notification->data['letter']['subject']}}
		                                    </div>
		                                </div>
		                        
									
		                                <div class="form-group row">
		                                    <label class="control-label text-right col-md-2">Message:</label>
		                                    <div class="col-md-9" style="text-align: justify">
		                                        {{$notification->data['letter']['message']}}
		                                    </div>
		                                </div>
		                            
		                        </div>
		                         <hr>
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