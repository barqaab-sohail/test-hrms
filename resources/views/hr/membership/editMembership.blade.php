
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

		                    <form action="{!!route('editMembership', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Membership</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-2">Name</label>
		                                        <div class="col-md-10">
		                                           <select  id="name" name="name"  class="form-control" required>
                                                        
                                                        <option value="{{$data->name}}">{{$data->name}}</option> 
		                                             	<option value="PEC" @if($data->name == 'PEC') selected="selected" @endif>PEC</option>
		                                             	<option value"Other">Other</option>
                                                                                                                                                     
                                                    </select>



		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-4">Membership No.</label>
		                                        <div class="col-md-8">
		                                            <input type="text" name="membership_no" value="{!! old('membership_no', optional($data)->membership_no) !!}" class="form-control " placeholder="Enter Membership No" >
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-2">Expiry Date</label>
		                                        <div class="col-md-5">
		                                            <input type="date"  name="expiry_date" value="{!! old('expiry_date', optional($data)->expiry_date) !!}" class="form-control"  >
		                                        </div>
		                                       
		                                      
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
		                                            <button type="submit" class="btn btn-success">Edit Membership</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
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
						
						@if(Auth::user()->role_id==1)<th> Actions </th> @endif
					</tr>
					</thead>
					<tbody>
						@foreach($membershipIds as $membershipId)
							<tr>
								<td>{{$membershipId->name}}</td>
								<td>{{$membershipId->membership_no}}</td>
								<td>{{$membershipId->expiry_date}}</td>
								
								<td>
								@if(Auth::user()->role_id==1)
								 <a class="btn btn-info btn-sm" href="{{route('membership.edit',['id'=>$membershipId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 <a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deleteMembership',['id'=>$membershipId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>
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

            	$("#name").change(function (){
				var other = $('#name').val();
					if (other != 'PEC'){
					var name=prompt("Enter Membership Name");
					var select = $('#name');
					select.empty().append(new Option(name, name, true, true),new Option('PEC', 'PEC'));
						
					}
				});
			
			});
        </script>
    @endpush

@stop