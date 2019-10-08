@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Project Detail</h3>
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
					@include('layouts.master.projectVerticalButton')
					</div>
        	
		        	<div class="col-lg-10">

		                <div style="margin-top:10px; margin-right: 10px;">
		                    
		                </div>
		                <div class="card-body">

		                    <form action="{{route('storeProject')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Project Information</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Project Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="name" value="{{ old('name') }}"  class="form-control" placeholder="Enter Name of Project" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Client Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="client" value="{{ old('client') }}" class="form-control " placeholder="Enter Client Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Start Date</label>
		                                        <div class="col-md-6">
		                                            <input type="date" name="commencement" value="{{ old('commencement') }}"   class="form-control " placeholder="Enter Commencement Date" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Contractual Completion</label>
		                                        <div class="col-md-6">
		                                            <input type="date" name="contractual_completion" value="{{ old('contractual_completion') }}" class="form-control " placeholder="Enter Contractual Completion Date" required>
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
		                                        <label class="control-label text-right col-md-3">Actual Completion</label>
		                                        <div class="col-md-6">
		                                            <input type="date" name="actual_completion" value="{{ old('actual_completion') }}" class="form-control " placeholder="Enter Actual Completion Date" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Type</label>
		                                        <div class="col-md-6">
		                                  		<select  name="type"  class="form-control selectTwo" required>
                                                    <option value=""></option>
                                                    <option value="Lumpsum">Lumpsum</option>
                                                    <option value="Time Based">Time Based</option>
                                                </select>
		                                        		                                        
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>

		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Status</label>
		                                        <div class="col-md-6">
		                                        <select  name="status"  class="form-control" required>
                                                        <option value=""></option>
                                                        <option value="In Progress">In Progress</option>
                                                        <option value="Completed">Completed</option>
                                                        <option value="Suspended">Suspended</option>
                                                    </select>
                                                </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Role</label>
		                                        <div class="col-md-6">
		                                            
		                                           	 <select  name="role"  class="form-control" required>
                                                        <option value=""></option>
                                                        <option value="Independent">Independent</option>
                                                        <option value="Lead Partner">Lead Partner</option>
                                                        <option value="JV Partner">JV Partner</option>
                                                        <option value="Sub Consultant">Sub Consultant</option>
                                                    </select>
		                                        		                                        
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>

		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Percentage Share</label>
		                                        <div class="col-md-6">

		                                        <input type="text"  name="share" value="{{ old('share') }}"  class="form-control" placeholder="Enter %age Share" required>
		                                        
                                                </div>
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
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Add Project</button>
		                                           
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

        </script>

        

    @endpush

@stop