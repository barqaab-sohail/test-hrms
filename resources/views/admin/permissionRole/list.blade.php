			                   
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
						
						<th>Edit</th>
						<th>Delete</th> 
 

					</tr>
					</thead>
					<tbody>
						@foreach($permissions as $permissionId)
							<tr>
								<td>{{$permissionId->name}}</td>
							
								<td>
								 <a class="btn btn-info btn-sm" href="" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 </td>
								  
 
								 <td>
								 <form action="" method="POST">
								 @method('DELETE')
								 @csrf
								 <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href= data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></button>
								 </form>
								 </td>
								  
 

								 
															
							</tr>
						@endforeach
					
					 
					
					</tbody>
				</table>
			</div>
		</div>
	</div>