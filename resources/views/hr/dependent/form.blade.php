 {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Dependent Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Name<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="name" value="{!! old('name')?? isset($data)?$data->name:''!!}" class="form-control" placeholder="Enter Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-8 date_input">
		                                        	<label class="control-label text-right">Date of Birth</label>
		                                        
		                                            <input type="text" id="date_of_birth" name="date_of_birth" value="{!! old('date_of_birth')?? isset($data)?$data->date_of_birth:'' !!}" class="form-control " placeholder="Enter Date of Birth" readonly>
													 
 

		                                            <br>
		                                            @can('edit record')<i class="fas fa-trash-alt text_requried"></i>@endcan
		                                             
 

		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Relation<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="relation" value="{{ old('relation')?? isset($data)?$data->relation:'' }}" class="form-control"  placeholder="Enter Relation with Employee" required>
		                                        </div>
		                                       		                                       
		                                    </div>
		                                </div>
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right ">Gender<span class="text_requried">*</span></label>
		                                        
		                                            <select  name="gender_id"  class="form-control" required>
                                                        <option value=""></option>
                                                        
                                                        @foreach($genders as $gender)
														 <option value="{{$gender->id}}" {{isset($data)?$data->gender_id == $gender->id ?'selected':'':''}}>{{$gender->name}}</option>
                                                        @endforeach

                                                    </select>
		                                        </div>
		                                       
		                                       <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
		                                    </div>
		                                </div>
		                                		                                
		                            </div>
		                            		                           
		                        </div>