
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
		                  <button type="button"  id ="hideButton"  class="btn btn-info float-right">Add Language</button>  
		                </div>
		                @endcan
		                 
 

		                <div class="card-body" id="hideDiv">

		                    <form action="{{route('language.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
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
                                                        <option value=""></option>
                                                        @foreach($allLanguages as $language)
														<option value="{{$language->id}}" {{(old("all_language_id")==$language->id? "selected" : "")}}>{{$language->name_1}}</option>
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
                                                        <option value=""></option>
                                                        <option value="Average" @if(old('reading')=='Average') selected="selected" @endif>Average</option>
                                                        <option value="Good" @if(old('reading')=='Good') selected="selected" @endif>Good</option>
                                                        <option value="Excellent" @if(old('reading')=='Excellent') selected="selected" @endif>Excellent</option>
                                                    </select>
		                                        </div>
		                                        <div class="col-md-3">
		                                        <label class="control-label text-right">Speaking </label>
		                                             <select  name="speaking"  class="form-control selectTwo" required>
                                                        <option value=""></option>
                                                        <option value="Average" @if(old('speaking')=='Average') selected="selected" @endif>Average</option>
                                                        <option value="Good" @if(old('speaking')=='Good') selected="selected" @endif>Good</option>
                                                        <option value="Excellent" @if(old('speaking')=='Excellent') selected="selected" @endif>Excellent</option>
                                                    </select>
		                                        </div>
		                                        <div class="col-md-3">
		                                        <label class="control-label text-right">Writing </label>
		                                             <select  name="writing"  class="form-control selectTwo" required>
                                                        <option value=""></option>
                                                        <option value="Average" @if(old('writing')=='Average') selected="selected" @endif>Average</option>
                                                        <option value="Good" @if(old('writing')=='Good') selected="selected" @endif>Good</option>
                                                        <option value="Excellent" @if(old('writing')=='Excellent') selected="selected" @endif>Excellent</option>
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
	@if($languageIds->count()!=0)		                    
	
	@include('hr.language.list')

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