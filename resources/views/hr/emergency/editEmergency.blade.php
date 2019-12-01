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
						 
 

		                <div style="margin-top:10px; margin-right: 10px;">
		                    
		                    
		                </div>
		                 
 

		                <div class="card-body">

		                    <form action="{!!route('emergency.update', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                    @method('PATCh')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Edit Emergency Contact Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Name<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="name" value="{!! old('name', optional($data)->name) !!}" class="form-control" placeholder="Enter Name of Person" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Relation</label>
		                                        
		                                            <input type="text" name="relation" value="{!! old('relation', optional($data)->relation) !!}" class="form-control " placeholder="Enter Relation with Person" required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Mobile No.<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="mobile" value="{!! old('mobile', optional($data)->mobile) !!}" class="form-control"  placeholder="Enger Mobile No." required>
		                                        </div>
		                                       
		                                       
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Landline No.</label>
		                                      
		                                            <input type="text"  name="landline" value="{!! old('landline', optional($data)->landline) !!}" class="form-control" placeholder="Enger Landline No." >
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
		                                        @can('edit record')
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Edit</button>
		                                        @endcan
		                                            
		                                        </div>
		                                         
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
	@if($emergencyIds->count()!=0)		                    

	@include('hr.emergency.list')
		
	@endif
		        		</div>       
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