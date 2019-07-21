@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor"></h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
		
		
	</ol>
@stop
@section('content')
   

    <div class="row">
        <div class="col-lg-12">

            <div class="card card-outline-info">
			
				<div class="row">
					<div class="col-lg-1">
					</div>
		        	<div class="col-lg-10">
						
		                <div style="margin-top:10px; margin-right: 10px;">
		                    		                    
		                </div>
		                <div class="card-body">

		                    <form action="{!!route('editPosition', ['id'=>optional($data)->id])!!}"  method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Positions</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-9">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Position Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="name" value="{!! old('name', optional($data)->name) !!}"class="form-control" placeholder="Enter Position Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-6">Position Level</label>
		                                        <div class="col-md-6">
		                                            <select  name="level"  class="form-control" >
                                                       <option value=""></option>
													@for ($i = 1; $i < 15; $i++)
    												<option value="{{$i}}"
													@if($i == $data->level) selected="selected" @endif
    												>{{ $i }}</option>
													@endfor
                                                    </select>
		                                        </div>
		                                    </div>
		                                   
		                                </div>
		                            </div>

		                        </div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Save</button>
		                                           
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>

@if($positionIds->count()!=0)		                    
			                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Positions</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Position Name</th>
						<th>Level</th>
						@if(Auth::user()->role_id==1)<th> Actions </th> @endif
					</tr>
					</thead>
					<tbody>
						@foreach($positionIds as $positionId)
							<tr>
								<td>{{$positionId->name}}</td>
								<td>{{$positionId->level}}</td>
								
								<td>
								@if(Auth::user()->role_id==1)
								 <a class="btn btn-info btn-sm" href="{{route('position.edit',['id'=>$positionId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								  <a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deletePosition',['id'=>$positionId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>
								 @endif
															
							</tr>
						@endforeach
					
					 
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	@endif


		        		</div>       
		        	</div>
		        </div>
            </div>
        </div>
    </div>
 @push('scripts')
        <script>
           $(document).ready(function() {
            $('#myTable').DataTable({
                stateSave: false,
                dom: 'Blfrtip',
                buttons: [
                    {
                        extend: 'copyHtml5',
                        exportOptions: {
                            columns: [ 0, 1]
                        }
                    },
                    {
                        extend: 'excelHtml5',
                        exportOptions: {
                            columns: [ 0, 1]
                        }
                    },
                    {
                        extend: 'pdfHtml5',
                        exportOptions: {
                            columns: [ 0, 1]
                        }
                    }, {
                        extend: 'csvHtml5',
                        exportOptions: {
                            columns: [ 0, 1]
                        }
                    },
                ]
            });
        });

        </script>
    @endpush

@stop