	                   						                   
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Task Detail</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myDataTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Task Detail</th>
						<th>Completion Date</th>
						<th>Remaining Days</th>
						<th>Status</th>
						
						 
 
<th colspan="2" style="text-align: center;"> Actions </th><th></th> 
 

					</tr>
					</thead>
					<tbody>
						@foreach($taskIds as $taskId)
							<tr>
								<td>{{$taskId->task_detail}}</td>
								<td>{{$taskId->completion_date}}</td>
								<td>@php 
										$date1 = new DateTime($taskId->completion_date);
										$date2 = new DateTime(now());
										echo $date1->diff($date2)->format("%d").' Days';
									@endphp
								</td>
								@if($taskId->status === 'Pending')
									<td><a class="btn btn-warning btn-sm" href=""  onclick="return confirm('Are you Sure to Change Status')" id="update,id={{$taskId->id}}"  data-toggle="tooltip" data-original-title="Change Status"> <i class="fas fa-pencil-alt text-white "></i>{{$taskId->status}}</a></td>
								@elseif($taskId->status === 'Completed')
									<td><a class="btn btn-success btn-sm" onclick="return confirm('Are you Sure to Change Status')" id="update,id={{$taskId->id}}" href="" data-toggle="tooltip" data-original-title="Change Status"> <i class="fas fa-pencil-alt text-white "></i>{{$taskId->status}}</a></td>
								@endif
								
								<td>
								  
 

								<td>
								 <a class="btn btn-info btn-sm" href="{{route('task.edit',['id'=>$taskId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 </td>
								 <td>
								 <form action="{{route('task.destroy',['id'=>$taskId->id])}}" method="POST">
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
	