	                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
		
			<h2 class="card-title">Education Detail</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Degree Name</th>
						<th>Institute</th>
						<th>Completion Year</th>
						<th>Grade</th>
						 
 
<th colspan="2"> Actions </th> 
 

					</tr>
					</thead>
					<tbody>
						@foreach($educationIds as $educationId)
							<tr>
								<td>{{$educationId->degree_name}}</td>
								<td>{{$educationId->institute}}</td>
								<td>{{$educationId->to_year}}</td>
								<td>{{$educationId->grade}}</td>
								
								 
 

								 <td>
								 <a class="btn btn-info btn-sm" href="{{route('education.edit',['id'=>$educationId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 </td>
								 <td>
								 @can('hr_edit_record')
								 <form action="{{route('education.destroy',['id'=>$educationId->id])}}" method="POST">
								 @method('DELETE')
								 @csrf
								 <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href= data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></button>
								 </form>
								 @endcan
								 </td>
								  
 

															
							</tr>
						@endforeach
					
					 
					
					</tbody>
				</table>
			</div>
		</div>
	</div>