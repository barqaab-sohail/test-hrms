	                   			<br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Publication Detail</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Title</th>
						<th>Channel</th>
						<th>Year</th>
						
						 
 
<th colspan="2" style="text-align: center;"> Actions </th> 
 

					</tr>
					</thead>
					<tbody>
						@foreach($publicationIds as $publicationId)
							<tr>
								<td>{{$publicationId->title}}</td>
								<td>{{$publicationId->channel}}</td>
								<td>{{$publicationId->year}}</td>
								
								<td>
								  
 

								<td>
								 <a class="btn btn-info btn-sm" href="{{route('publication.edit',['id'=>$publicationId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 </td>
								 <td>
								 @can('edit record')
								 <form action="{{route('publication.destroy',['id'=>$publicationId->id])}}" method="POST">
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
	