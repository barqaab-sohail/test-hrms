	                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Dependents Detail</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Name</th>
						<th>Date of Birth</th>
						<th>Relation</th>
						<th>Gender</th>
						@can('entry', Auth::user())<th> Actions </th> @endcan
					</tr>
					</thead>
					<tbody>
						@foreach($dependentIds as $dependentId)
							<tr>
								<td>{{$dependentId->name}}</td>
								<td>{{$dependentId->date_of_birth}}</td>
								<td>{{$dependentId->relation}}</td>
								<td>{{$dependentId->gender->name}}</td>
								<td>
								@can('entry', Auth::user())
								<td>
								 <a class="btn btn-info btn-sm" href="{{route('dependent.edit',['id'=>$dependentId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 </td>
								 <td>
								 <form action="{{route('dependent.destroy',['id'=>$dependentId->id])}}" method="POST">
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
	