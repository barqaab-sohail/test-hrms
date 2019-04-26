@extends('layouts.app2')


@section('content')


	<div class="col-md-10 col-md-offset-1">
    	<h3 class="well well-sm" >New User</h3>   		
    	<form id="editEducation" method="post" action="{{url('store')}}" enctype="multipart/form-data" >
    	@csrf
    		<div class="well well-sm">
			    <div class="row">
			        <div class="col-sm-4 form-group">
			            <label >First Name</label> <span class="text-danger">*</span>
			            <input type="text" id="first_name" name="first_name" value="{{ old('first_name') }}" class="form-control"  required>
			        </div>
			        <div class="col-sm-4 form-group">
			            <label >Middle Name</label> <span class="text-danger"></span>
			            <input type="text" id="middle_name" name="middle_name" value="{{ old('middle_name') }}" class="form-control"  >
			        </div>
			        <div class="col-sm-4 form-group">
			            <label >Last Name</label> <span class="text-danger">*</span>
			            <input type="text" id="last_name" name="last_name"  class="form-control"  value="{{ old('last_name') }}" required>
			        </div>
			    </div>  
			  	<br>
			    <div class="row">
			       	<div class="col-sm-4 form-group">
			            <label >CNIC</label> <span class="text-danger"> *</span>
			            <input type="text" id="cnic" name="cnic"  value="{{ old('cnic') }}" class="form-control" required>
			        </div>
			        <div class="col-sm-3 form-group">
			            <label>CNIC Expiry</label> <span class="text-danger"> *</span>
			            <input type="date" id="cnic_expiry"  name="cnic_expiry" class="form-control" value="{{ old('cnic_expiry') }}" required>
			        </div>  
			        <div class="col-sm-5 form-group">
			            <label>Email</label> <span class="text-danger"> *</span>
			            <input type="email" id="email"  name="email" value="{{ old('email') }}" class="form-control" required>
			        </div>  
			        
			    </div>  
			    <div class="row">
			       	<div class="col-sm-4 form-group">
			            <label >Picture</label> <span class="text-danger"></span>
			            <input type="file" id="picture" name="picture"  value="{{ old('picture') }}" class="form-control" required>
			        </div>
			    </div>  
			    <br>
			    <br>
	 			<div class="row">
					<div class="col-sm-2 form-group">
						<button type="submit" id="submit" name="save" class="btn btn-lg btn-info">Save</button>
					</div>
					
					<div class="col-sm-4 form-group error">
						@if ($errors->any())
	                        <div class="alert alert-danger">
		                        <button type="button" class="close" data-dismiss="alert">X</button>	
		                         <ul>
		                            @foreach ($errors->all() as $error)
		                                <li>{{ $error }}</li>
		                            @endforeach
		                      	</ul>
	                      	</div>
                    	@endif
					</div>

					<div class="col-sm-4 form-group message">
					  		@if(session()->has('message'))
					  		<div class="alert alert-success">
							<button type="button" class="close" data-dismiss="alert">X</button>	
	    					{{ session()->get('message') }}
	  						@endif
							</div>
					</div>
					
					<div class="col-sm-3 form-group">
					</div>



			    </div>
			</div>
    	</form>
	</div>

@endsection