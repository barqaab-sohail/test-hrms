<form action="{!!route('publication.update', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                    @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Publication</h3>
		                            <hr class="m-t-0 m-b-40">
									<div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group row">
		                                       	<div class="col-md-12">
		                                        	<label class="control-label text-right">Title<span class="text_requried">*</span></label>
		                                       
		                                        	<input type="text"  name="title" value="{!! old('title', optional($data)->title) !!}" placeholder="Enter Publication Title " class="form-control"  required>
		                                            
		                                        </div>
		                                    </div>
		                                </div>
		                               
		                               
		                            </div>
		                                
		                            <!--/row-->

		                            <div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Description</label>
		                                        
		                                            <textarea type="text" rows=3 cols=20 name="description" class="form-control" placeholder="Enter Description">{!! old('description', optional($data)->description) !!}</textarea>
		                                        </div>
		                                    </div>
		                                </div>
		                               
		                               
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        
		                                        	<label class="control-label text-right">Channel/Media<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="channel" value="{!! old('channel', optional($data)->channel) !!}" placeholder="Enter Publication Channel/Media " class="form-control"  required>
		                                        </div>
		                                        
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right">Year</label>
		                                        
		                                            <input type="text"  name="year" value="{!! old('year', optional($data)->year) !!}" class="form-control"  placeholder="Enter Year of Publication" >
		                                        </div>

		                                        <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
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
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Add Publication</button>
		                                        @endcan
		                                            
		                                        </div>
		                                         
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
	