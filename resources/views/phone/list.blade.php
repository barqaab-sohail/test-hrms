	<h4 class="card-title">List of Phone Numbers </h4>
				
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Name</th>
						<th>Designation</th>
						<th >Mobile-1</th>
						<th>Mobile-2</th>
						
						<th> Actions </th>
						<th></th>
					</tr>
					</thead>
					<tbody>
						@foreach($phones as $phone)
							<tr>
								<td>{{$phone->name}}</td>
								<td>{{$phone->designation}}</td>
								<td>{{$phone->mobile_1}}</td>
								<td>{{$phone->mobile_2}}</td>
																


								 
 

								<td>
									<a class="btn btn-info btn-sm" href="{{route('contactNumber.edit',['id'=>$phone->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								</td>
								<td>
									<form action="{{route('contactNumber.destroy',['id'=>$phone->id])}}" method="POST">
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