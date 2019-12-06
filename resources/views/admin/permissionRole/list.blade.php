			                   
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Permissions to Roles</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Permission Name</th>
						<th>Role Name</th>
						<th>Delete</th> 
 

					</tr>
					</thead>
					<tbody>
						@foreach($roles as $role)
						@php
							$allPermissions = $role->getAllPermissions();
						@endphp
							@foreach($allPermissions as $allPermission)
							<tr>
								<td width="20%">{{$allPermission->name}}</td>
								<td >{{$role->name}}</td>
							
								<td>
								 @can('edit record')
								 <form action="{{route('permissionRole.delete',['role_id'=>$role->id, 'permission_id'=>$permission->id])}}" method="POST">
								 @csrf
								 <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to revoke permission to role')" href= data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></button>
								 </form>
								 @endcan
								</td>
 			  								
							</tr>
							@endforeach
						@endforeach
					
					</tbody>
				</table>
			</div>
		</div>
	</div>

