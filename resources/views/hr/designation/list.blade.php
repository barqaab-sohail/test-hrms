			                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Designations</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Designation Name</th>
						<th>Level</th>
						<th>Actions</th>@can('admin', Auth::user())<th></th>@endcan
					</tr>
					</thead>
					<tbody>
						@foreach($designationIds as $designationId)
							<tr>
								<td>{{$designationId->name}}</td>
								<td>{{$designationId->level}}</td>
								
								@can('entry', Auth::user())
								<td>
								 <a class="btn btn-info btn-sm" href="{{route('designation.edit',['id'=>$designationId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 </td>
								 @endcan
								 @can('admin', Auth::user())
								 <td>
								 <form action="{{route('designation.destroy',['id'=>$designationId->id])}}" method="POST">
								 @method('DELETE')
								 @csrf
								 <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href= data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></button>
								 </form>
								 </td>
								 @endcan
								 
															
							</tr>
						@endforeach
					
					 
					
					</tbody>
				</table>
			</div>
		</div>
	</div>