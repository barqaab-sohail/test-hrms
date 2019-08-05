
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

		                    <form action="{{route('storeMembership')}}" method="post" class="form-horizontal" id="membership" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Membership With Professional Society / Autonomous Body</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Name<span class="text_requried">*</span></label>
		                                        
		                                            <select  name="name" id="name"    class="form-control" required>
                                                        <option value=""></option>
                                                        <option value="PEC"  {{ old('name') == "PEC" ? 'selected' : '' }}>PEC </option>
                                                        <option value="Other"  {{ old('name') == "Other" ? 'selected' : '' }}>Other </option>
                                                    </select>
                                                     
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Membership No.</label>
		                                        
		                                            <input type="text" name="membership_no" value="{{ old('membership_no') }}" class="form-control " placeholder="Enter Membership No ">
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-7">
		                                        	<label class="control-label text-right ">Expiry Date</label>
		                                        
		                                            <input type="date"  name="expiry_date" value="{{ old('expiry_date') }}" class="form-control" >
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
		                                    	@can('entry', Auth::user())
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Add Membership</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                        @endcan
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		@if($membershipIds->count()!=0)		                    
			                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Membership</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Institute</th>
						<th>Membership No.</th>
						<th>Expiry Date</th>
						
						 @can('entry', Auth::user())<th> Actions </th> @endcan
					</tr>
					</thead>
					<tbody>
						@foreach($membershipIds as $membershipId)
							<tr>
								<td>{{$membershipId->name}}</td>
								<td>{{$membershipId->membership_no}}</td>
								<td>{{$membershipId->expiry_date}}</td>
								
								<td>
								 @can('entry', Auth::user())
								<a class="btn btn-info btn-sm" href="{{route('membership.edit',['id'=>$membershipId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								<a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deleteMembership',['id'=>$membershipId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>
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
			
			$("#name").change(function (){
				var other = $('#name').val();
					if (other != 'PEC'){
					var name=prompt("Enter Membership Name");
					var select = $('#name');
					select.empty().append(new Option(name, name, true, true),new Option('PEC', 'PEC'));
						
					}
			});

			$("#membership").submit(function(e) {
				var name = $('#name').val();

				if (name=='null'){
					alert('null Value is not accepted');
					e.preventDefault();
				}

			});
			
			
			});
        </script>
    @endpush

@stop