	                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Training Detail</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Title</th>
						<th>Country</th>
						<th>From</th>
						<th>To</th>
						  
 
<th colspan="2" style="text-align: center;"> Actions </th> 
 

					</tr>
					</thead>
					<tbody>
						@foreach($trainingIds as $trainingId)
							<tr>
								<td>{{$trainingId->title}}</td>
								<td>{{$trainingId->country->name}}</td>
								<td>{{$trainingId->from}}</td>
								<td>{{$trainingId->to}}</td>
								<td>
								 
 

								<td>
								 <a class="btn btn-info btn-sm" href="{{route('training.edit',['id'=>$trainingId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 </td>
								 <td>
								 @can('hr_edit_record')
								 <form action="{{route('training.destroy',['id'=>$trainingId->id])}}" method="POST">
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