
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

		                    <form action="{{route('storeDependent')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Dependent Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-2">Name</label>
		                                        <div class="col-md-10">
		                                            <input type="text"  name="name" value="{{ old('name') }}" class="form-control" placeholder="Enter Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-4">Date of Birth</label>
		                                        <div class="col-md-8">
		                                            <input type="text" id="date_of_birth" name="date_of_birth" value="{{ old('date_of_birth') }}" class="form-control " placeholder="Enter Date of Birth" required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-2">Relation</label>
		                                        <div class="col-md-10">
		                                            <input type="text"  name="relation" value="{{ old('relation') }}" class="form-control"  placeholder="Enter Relation with Employee" required>
		                                        </div>
		                                       		                                       
		                                    </div>
		                                </div>
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-4">Gender</label>
		                                        <div class="col-md-8">
		                                            <select  name="gender"  class="form-control" required>
                                                        <option value=""></option>
                                                        <option value="Male">Male</option>
                                                        <option value="Female">Female</option>
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
		                                            <button type="submit" class="btn btn-success">Save</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		@if($dependentIds->count()!=0)		                    
			                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Dependent Detail</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Name</th>
						<th>Date of Birth</th>
						<th>Relation</th>
						<th>Gender</th>
						@if(Auth::user()->role_id==1)<th> Actions </th> @endif
					</tr>
					</thead>
					<tbody>
						@foreach($dependentIds as $dependentId)
							<tr>
								<td>{{$dependentId->name}}</td>
								<td>{{$dependentId->date_of_birth}}</td>
								<td>{{$dependentId->relation}}</td>
								<td>{{$dependentId->gender}}</td>
								<td>
								@if(Auth::user()->role_id==1)
								 <a class="btn btn-info btn-sm" href="{{route('dependent.edit',['id'=>$dependentId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
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


            	$( function() {
			    $( "#date_of_birth" ).datepicker({
			      dateFormat: 'dd-MM-yy',
			      yearRange: '1960:'+ (new Date().getFullYear()),
			      changeMonth: true,
			      changeYear: true
			    });
		    });
			
			});
        </script>
    @endpush

@stop