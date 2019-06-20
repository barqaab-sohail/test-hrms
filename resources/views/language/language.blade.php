
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

		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-info float-right">Back</button>
		                    
		                </div>
		                <div class="card-body">

		                    <form action="{{route('storeLanguage')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Language Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-8">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Name of Language</label>
		                                        <div class="col-md-9">
		                                            										

													<select  name="name"  class="form-control" required>
                                                        <option value=""></option>
                                                        @foreach($allLanguages as $language)
														<option value="{{$language->name_1 }}">{{$language->name_1}}</option>
                                                        @endforeach
                                                        
                                                    </select>
		                                            
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-4">Proficiency</label>
		                                        <div class="col-md-8">
		                                             <select  name="proficiency"  class="form-control" required>
                                                        <option value=""></option>
                                                        <option value="Average">Average</option>
                                                        <option value="Good">Good</option>
                                                        <option value="Excellent">Excellent</option>
                                                    </select>
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
		                                            <button type="submit" class="btn btn-success">Save Language</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
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
			<h2 class="card-title">Stored Banks Detail</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Name of Language</th>
						<th>Proficiency</th>
						
						@if(Auth::user()->role_id==1)<th> Actions </th> @endif
					</tr>
					</thead>
					<tbody>
						@foreach($languageIds as $languageId)
							<tr>
								<td>{{$languageId->name}}</td>
								<td>{{$languageId->proficiency}}</td>
								
								<td>
								@if(Auth::user()->role_id==1)
								 <a class="btn btn-info btn-sm" href="{{route('language.edit',['id'=>$languageId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								<a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deleteLanguage',['id'=>$languageId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>


								 @endif
															
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
			$('select').select2({
  			maximumSelectionLength: 2,

			});
			});
        </script>
    @endpush

@stop