
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

		                    <form action="{!!route('language.update', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                    @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Language Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-2">Language</label>
		                                        <div class="col-md-3">
		                                            										
													<select  name="all_language_id"  class="form-control selectTwo" required>
                                                        @foreach($allLanguages as $language)
		                                             	<option value="{{$language->id}}" @if($data->all_language_id == $language->id) selected="selected" @endif>{{$language->name_1}}</option>
                                                                                                              
                                                     @endforeach    
                                                        
                                                    </select>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                       
		                                    </div>
		                                </div>
		                            </div>
		                          	<div class="row">
		                          		<div class="col-md-2">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-12">Proficiency</label>
		                                    </div>
		                                </div>
										<div class="col-md-10">
		                                    <div class="form-group row">
		                                        
		                                        <div class="col-md-3">
		                                        <label class="control-label text-right">Reading </label>
		                                             <select  name="reading"  class="form-control selectTwo" required>
                                                        <option value="Average"  @if($data->reading == 'Average')selected="selected" @endif>Average</option>
		                                             	
                                                        <option value="Good" @if($data->reading == 'Good') selected="selected" @endif>Good</option>
                                                        
                                                        <option value="Excellent" @if($data->reading == 'Excellent')selected="selected" @endif>Excellent</option>
                                                    </select>
		                                        </div>
		                                        <div class="col-md-3">
		                                        <label class="control-label text-right">Speaking </label>
		                                             <select  name="speaking"  class="form-control selectTwo" required>
                                                       <option value="Average"  @if($data->speaking == 'Average')selected="selected" @endif>Average</option>
		                                             	
                                                        <option value="Good" @if($data->speaking == 'Good') selected="selected" @endif>Good</option>
                                                        
                                                        <option value="Excellent" @if($data->speaking == 'Excellent')selected="selected" @endif>Excellent</option>
                                                    </select>
		                                        </div>
		                                        <div class="col-md-3">
		                                        <label class="control-label text-right">Writing </label>
		                                             <select  name="writing"  class="form-control selectTwo" required>
                                                        <option value="Average"  @if($data->writing == 'Average')selected="selected" @endif>Average</option>
		                                             	
                                                        <option value="Good" @if($data->writing == 'Good') selected="selected" @endif>Good</option>
                                                        
                                                        <option value="Excellent" @if($data->writing == 'Excellent')selected="selected" @endif>Excellent</option>
                                                    </select>
		                                        </div>
		                                    </div>
		                                </div>
		                                <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>                              
		                                          
		                        </div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                    	 
 

		                                        <div class="col-md-offset-3 col-md-9">
		                                        @can('edit record')
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Save Language</button>
		                                        @endcan
		                                            
		                                        </div>
		                                         
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
	@if($languageIds->count()!=0)		                    

	@include('hr.language.list')
		
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