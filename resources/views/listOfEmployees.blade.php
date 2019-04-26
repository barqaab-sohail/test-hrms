@extends('layouts.app2')


@section('content')

	
	<div class="col-md-10 col-md-offset-1">
    	<h3 class="well well-sm" >List of Employees</h3>   		
    				
				<div class="row">
		        		             
			    	<div class="container-fluid">
		                <table  id="myTable" class="display nowrap table table-hover table-striped table-bordered" style="width:100%">
		                  <thead>
		                  <tr>
		                    <th style="width:15%">First Name</th>
		                    <th style="width:15%">Middle Name</th>
		                    <th style="width:15%">Last Name</th>
		                    <th style="width:10%">CNIC</th>
		                    <th style="width:10%">From</th>
		                    <th style="width:10%">To</th>
		                    <th style="width:5%">Duration</th>
		                   </tr>
		                  </thead>
		                  <tbody>
						
						@foreach($users as $user)
					   		<tr>
			                    <td>{{$user->first_name}}</td>
			                    <td>{{$user->middle_name}}</td>
			                    <td>{{$user->last_name}}</td>
			                    <td>{{$user->cnic}}</td>
			                    <td> <img src="{{url('upload/'.$user->picture)}}"></td>
			                    <td><img src="{{storage_path('app/public/'.$user->picture)}}"></td>
	                		</tr>
           				 @endforeach
						</tbody>
		            	</table>
		            	{{ $users->links() }}
		            	
					
					</div>
				</div>
	</div>

	
@endsection