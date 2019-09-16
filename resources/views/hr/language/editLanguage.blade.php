
@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Employee Name: {{$employee->first_name. " ".$employee->last_name}}</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
		
		
	</ol>
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
						@can('entry', Auth::user())
		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-info float-right">Back</button>
		                    
		                </div>
		                @endcan
		                <div class="card-body">

		                    <form action="{!!route('editLanguage', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Language Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-2">Language</label>
		                                        <div class="col-md-3">
		                                            										
													<select  name="name"  class="form-control selectTwo" required>
                                                        @foreach($allLanguages as $language)
		                                             	<option value="{{$language->name_1}}" @if($data->name == $language->name_1) selected="selected" @endif>{{$language->name_1}}</option>
                                                                                                              
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
		                                    	@can('entry', Auth::user())
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Save Language</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                        @endcan
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		@if($languageIds->count()!=0)		                    
			                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Language Detail</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Name of Language</th>
						<th>Reading</th>
						<th>Speaking</th>
						<th>Writing</th>
						
						 @can('entry', Auth::user())<th> Actions </th> @endcan
					</tr>
					</thead>
					<tbody>
						@foreach($languageIds as $languageId)
							<tr>
								<td>{{$languageId->name}}</td>
								<td>{{$languageId->reading}}</td>
								<td>{{$languageId->speaking}}</td>
								<td>{{$languageId->writing}}</td>
								
								<td>
								 @can('entry', Auth::user())
								 <a class="btn btn-info btn-sm" href="{{route('language.edit',['id'=>$languageId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								<a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deleteLanguage',['id'=>$languageId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>


								 @endcan
															
							</tr>
						@endforeach
					 
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
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