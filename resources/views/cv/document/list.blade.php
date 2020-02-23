	                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Documents Detail</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTableStored" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Document Name</th>
						<th>Extension</th>
						<th>View</th>
						
						
						 
 @can('hr_edit_record')
<th colspan="2" style="text-align: center;"> Actions </th> 
 @endcan

					</tr>
					</thead>
					<tbody>
						@foreach($documentIds as $documentId)
							<tr>
								<td>{{$documentId->document_name}}</td>
								<td>{{$documentId->extension}}</td>
								@if($documentId->extension!='pdf')
								<td><img  id="ViewIMG" src="{{asset(isset($documentId->file_name)? 'storage/'.$documentId->path.$documentId->file_name: 'Massets/images/document.png') }}" href="{{asset(isset($documentId->file_name)?  'storage/'.$documentId->path.$documentId->file_name: 'Massets/images/document.png') }}" width=30/></td>
								@else
								<td><img  id="ViewPDF" src="{{asset('Massets/images/document.png')}}" href="{{asset(isset($documentId->file_name)? 'storage/'.$documentId->path.$documentId->file_name: 'Massets/images/document.png') }}" width=30/></td>
								@endif
								
								
								
								 
 
								@can('cv_edit')
								<td>
								 <a class="btn btn-info btn-sm" href="{{route('cvDocument.edit',['id'=>$documentId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 </td>
								 @endcan
								 @can('cv_delete')
								 <td>
								 
								 <form action="{{route('cvDocument.destroy',['id'=>$documentId->id])}}" method="POST">
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
	