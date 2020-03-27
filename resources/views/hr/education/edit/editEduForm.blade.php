  <form id="education" action="{!!route('education.update', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                    @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Edit Education</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Degree Name<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="degree_name" value="{!! old('degree_name', optional($data)->degree_name) !!}"class="form-control" placeholder="Enter Degree Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-11">
		                                        	<label class="control-label text-right ">Institute Name<span class="text_requried">*</span></label>
		                                        
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
		                                        <div class="col-md-6">
		                                        <label class="control-label text-right">Marks Obtain</label>
		                                        
		                                            <input type="text" name="marks_obtain" value="{!! old('marks_obtain', optional($data)->marks_obtain) !!}"   class="form-control " >
		                                        </div>
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right">Total Marks</label>
		                                        
		                                            <input type="text" name="total_marks" value="{!! old('total_marks', optional($data)->total_marks) !!}"   class="form-control " >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">	
		                                    <div class="form-group row">
		                                        <div class="col-md-8">
		                                        <label class="control-label text-right">Level of Degree<span class="text_requried">*</span></label>
		                                        
		                                            <select  name="level"  class="form-control selectTwo" required>

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
												<div class="col-md-6">
		                                           <label>Degree Start Month</label>
		                                           <select  name="from_month"  class="form-control selectTwo" >
                                                        <option value=""></option>
                                                        @for($m=1; $m<=12; ++$m){
    													<option value="{{date('F', mktime(0, 0, 0, $m, 1))}}" @if(date('F', mktime(0, 0, 0, $m, 1))==$data->from_month) selected="selected" @endif> {{date('F', mktime(0, 0, 0, $m, 1))}}</option>
														@endfor
                                                        
                                                    </select>

		                                        </div>
		                                        <div class="col-md-3">
		                                        <label>Year</label>
		                                            <select  name="from_year"  class="form-control selectTwo" >

													<option value=""></option>
													@for ($i = (date('Y')-65); $i < (date('Y')+1); $i++)
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
		                                        
		                                        <div class="col-md-8">
		                                           <label>Degree Completion Month</label>
		                                           <select  name="to_month"  class="form-control selectTwo" >
                                                        <option value=""></option>
                                                        @for($m=1; $m<=12; ++$m){
    													<option value="{{date('F', mktime(0, 0, 0, $m, 1))}}" @if(date('F', mktime(0, 0, 0, $m, 1))==$data->to_month) selected="selected" @endif> {{date('F', mktime(0, 0, 0, $m, 1))}}</option>
														@endfor
                                                        
                                                    </select>

		                                        </div>
		                                        <div class="col-md-3">
		                                        <label>Year<span class="text_requried">*</span></label>
		                                            <select  name="to_year"  class="form-control selectTwo" required>

													<option value=""></option>
													@for ($i = (date('Y')-65); $i < (date('Y')+1); $i++)
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
		                                        <div class="col-md-4">
		                                        	<label class="control-label text-right">Grade</label>
		                                        
		                                            <input type="text"  name="grade" value="{!! old('grade', optional($data)->grade) !!}" class="form-control" placeholder="Enter Grade" >
		                                        </div>
		                                        <div class="col-md-2">
		                                        </div>
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right">Country<span class="text_requried">*</span></label>
		                                        
													<select  name="country_id"  class="form-control selectTwo" required>
		                                           	<option value=""></option>
		                                           	@foreach($countries as $country)
													<option value="{{$country->id}}" @if($country->id == $data->country_id) selected="selected" @endif>{{$country->name}}</option>
                                                    @endforeach 	
                                                    </select>

		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-6">
		                                        	
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
		                                        	@can('hr_edit_record')
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Edit Education</button>
		                                            @endcan
		                                            
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                         
 

		                    </form>