
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

		                   <form action="{!!route('bank.update', ['id'=>optional($data)->id])!!}" method="POST" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                    @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Bank Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        
		                                        	<label class="control-label text-right">Name of Bank<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="name" value="{!! old('name', optional($data)->name) !!}" class="form-control" placeholder="Enter Bank Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        
		                                        <label class="control-label text-right ">Account No.<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="account_no" value="{!! old('account_no', optional($data)->account_no) !!}" class="form-control " placeholder="Enter Account No. " required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Branch Name</label>
		                                        
		                                            <input type="text"  name="branch_name" value="{!! old('branch_name', optional($data)->branch_name) !!}" class="form-control"  >
		                                        </div>
		                                       
		                                       <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
		                                    </div>
		                                </div>
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Branch Code</label>
		                                        
		                                            <input type="text"  name="branch_code" value="{!! old('branch_code', optional($data)->branch_code) !!}" class="form-control"  >
		                                        </div>
		                                       <input type="text" id="id" name="id" value="{{$data->id}}"   class="form-control "  hidden>
		                                       
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
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Edit Bank</button>
		                                        @endcan
		                                            
		                                        </div>
		                                     
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
	@if($bankIds->count()!=0)
	@include('hr.bank.list')	                    

	@endif
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