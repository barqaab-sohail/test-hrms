	                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Banks Detail</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Name of Bank</th>
						<th>Account No</th>
						<th>Branch Name</th>
						<th>Branch Code</th>
						 
 
<th> Actions </th>  
 

					</tr>
					</thead>
					<tbody>
						@foreach($bankIds as $bankId)
							<tr>
								<td>{{$bankId->name}}</td>
								<td>{{$bankId->account_no}}</td>
								<td>{{$bankId->branch_name}}</td>
								<td>{{$bankId->branch_code}}</td>
								<td>
								 
 

								<td>
								 <a class="btn btn-info btn-sm" href="{{route('bank.edit',['id'=>$bankId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 </td>
								 <td>
								 @can('edit record')
								 <form action="{{route('bank.destroy',['id'=>$bankId->id])}}" method="POST">
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
	