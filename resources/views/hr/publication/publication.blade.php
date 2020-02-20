
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
		                    <button type="button"  id ="hideButton"  class="btn btn-info float-right">Add Publication</button>
		                </div>
		                @endcan
		                 
 

		                <div class="card-body" id="hideDiv">

		                    <form action="{{route('publication.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Publication</h3>
		                            <hr class="m-t-0 m-b-40">
		                             <div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Title<span class="text_requried">*</span></label>
		                                            <input type="text"  name="title" value="{{ old('title') }}" placeholder="Enter Publication Title " class="form-control"  required>
		                                        </div>
		                                    </div>
		                                </div>
		                               
		                               
		                            </div>
		                                
		                            <!--/row-->

		                            <div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group row">
		                                       	<div class="col-md-12">
		                                        	<label class="control-label text-right">Description</label>
		                                       
		                                            <textarea type="text" rows=3 cols=20 name="description" class="form-control" placeholder="Enter Description" >{{ old('description') }}</textarea>
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
		                                        
		                                            <input type="text"  name="channel" value="{{ old('channel') }}" placeholder="Enter Publication Channel/Media " class="form-control"  required>
		                                        </div>
		                                        
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-6">
		                                        	<label class="control-label text-right">Year</label>
		                                        
		                                            <input type="text"  name="year" value="{{ old('year') }}" class="form-control"  placeholder="Enter Year of Publication" >
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
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Save</button>
		                                        @endcan
		                                            
		                                        </div>
		                                         
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		                </div>
	@if($publicationIds->count()!=0)		                    
	@include('hr.publication.list')
		
	@endif
			                    
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