@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">List of Projects</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
		
	
	</ol>
@stop
@section('content')
	<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
		<div class="container">
   					<h3 align="center">Import Excel File</h3>

				   	<form method="post" enctype="multipart/form-data" action="{{route('importExcel')}}">
				    {{ csrf_field() }}
				    <div class="form-group">
				     <table class="table">
				      <tr>
				       <td width="40%" align="right"><label>Select File for Upload</label></td>
				       <td width="30">
				        <input type="file" name="select_file" />
				       </td>
				       <td width="30%" align="left">
				        <input type="submit" name="upload" class="btn btn-info" value="Upload">
				       </td>
				      </tr>
				      <tr>
				       <td width="40%" align="right"></td>
				       <td width="30"><span class="text-muted">.xls, .xslx Files Only</span></td>
				       <td width="30%" align="left"></td>
				      </tr>
				     </table>
				    </div>
				   </form>
		</div>

		<hr>

@if($projects->count()!=0)
			<h4 class="card-title">List of Projects</h4>
				
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Project Name</th>
						<th>Name of Client</th>
						<th>Commencement Date</th>
						<th>Contractual Completion</th>
						<th>Status</th>
						<th> Actions </th>
					</tr>
					</thead>
					<tbody>
						@foreach($projects as $project)
							<tr>
								<td>{{$project->name}}</td>
								<td>{{$project->client}}</td>
								<td>{{$project->commencement}}</td>
								<td>{{$project->contractual_completion}}</td>
								<td>{{$project->status}}</td>
								<td>
								
								 <a class="btn btn-info btn-sm" href="{{route('project.edit',['id'=>$project->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
															
							</tr>
						@endforeach
					
					 
					
					</tbody>
				</table>
			</div>
	@else
	<h4 class="card-title">No Project Entered</h4>

	@endif
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
                            columns: [ 0, 1, 2,3,4]
                        }
                    },
                    {
                        extend: 'excelHtml5',
                        exportOptions: {
                            columns: [ 0, 1, 2,3,4]
                        }
                    },
                    {
                        extend: 'pdfHtml5',
                        exportOptions: {
                            columns: [ 0, 1, 2,3,4]
                        }
                    }, {
                        extend: 'csvHtml5',
                        exportOptions: {
                            columns: [ 0, 1, 2,3,4]
                        }
                    },
                ]
            });
        });
        $(document).ready(function () {
            $("#month").change(function(e){
                var url = "/" + $(this).val();
                if (url) {
                    window.location = url;
                }
                return false;
            });
        });
	</script>
	@endpush
@stop