
@extends('layouts.master.master')

@section('content')

   <div class="row">
        <div class="col-lg-12">

            <div class="card card-outline-info">
			
				<div class="row">
					
        			
		        	<div class="col-lg-12">
						  
 

		                <div class="card-body">

		                    <form action="" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Leave Types</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Leave Name<span class="text_requried">*</span></label>
		                                        											
													<input type="text" id="name" name="name" value="{{ old('name') }}" class="form-control " placeholder="Enter Leave Name" required >
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Annual Quota<span class="text_requried">*</span></label>
		                                        
		                                            <input type="number" id="annual_quota" name="annual_quota" value="{{ old('annual_quota') }}" class="form-control "  required>


		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span-->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Accumulate<span class="text_requried">*</span></label>
		                                        
		                                            <input type="number" id="annual_quota" name="annual_quota" value="{{ old('annual_quota') }}" class="form-control "  required>


		                                        </div>
		                                    </div>
		                                </div>

		                                 <!--/span-->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Accumulate Limit<span class="text_requried">*</span></label>
		                                        
		                                            <input type="number" id="annual_quota" name="annual_quota" value="{{ old('annual_quota') }}" class="form-control "  required>


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
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Add Posting</button>
		                                            
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