<div class="form-group">
						     		<div class="row">
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Full Name<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="name" value="{!! old('name')?? isset($data)?$data->name:'' !!}"  class="form-control" placeholder="Enter Full Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Designation</label>
		                                            <input type="text" name="designation" value="{!! old('designation')?? isset($data)?$data->designation:'' !!}" class="form-control" placeholder="Enter Middle Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span-->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Mobile No.<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="mobile_1" value="{!! old('mobile_1')?? isset($data)?$data->mobile_1:'' !!}" class="form-control" placeholder="Enter Mobile Number" required>
		                                        </div>
		                                    </div>
		                                </div>
				                    </div>
				                    <div class="row">
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Address</label><br>
		                                       		<input type="text"  name="address" value="{!! old('address')?? isset($data)?$data->address:'' !!}"  class="form-control" placeholder="Enter Full Address" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">2nd Mobile No.</label>
		                                            <input type="text" name="mobile_2" value="{!! old('mobile_2')?? isset($data)?$data->mobile_2:'' !!}" class="form-control " placeholder="Enter 2nd Mobile Number" >
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span-->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Email</label>
		                                        
		                                            <input type="email" name="email" value="{!! old('email')?? isset($data)?$data->email:'' !!}" class="form-control " placeholder="Enter Email Address" >
		                                        </div>
		                                    </div>
		                                </div>
				                    </div>
								
				    	</div>