<br>
<hr>
<br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Pormotion</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Promoted Designation</th>
						<th>Effective Date</th>
						<th>Revised Salary</th>
						<th>Remarks</th>
						@can('entry', Auth::user())<th colspan="2" style="text-align: center;"> Actions </th>@endcan
					</tr>
					</thead>
					<tbody>
						@foreach($promotionIds as $promotionId)
							<tr>
								<td>{{$promotionId->promoted_designation}}</td>
								<td>{{$promotionId->effective_date}}</td>
								<td>{{$promotionId->total}}</td>
								<td>{{$promotionId->promotion_remarks}}</td>
								
								@can('entry', Auth::user())
								<td>
								 <a class="btn btn-info btn-sm" href="{{route('promotion.edit',['id'=>$promotionId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 </td>
								 <td>
								 <form action="{{route('promotion.destroy',['id'=>$promotionId->id])}}" method="POST">
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
	