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

				   	<form method="post" enctype="multipart/form-data" action="{{route('importPhone')}}">
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

@if($phones->count()!=0)
			<h4 class="card-title">List of Phone Numbers </h4>
				
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Name</th>
						<th>Designation</th>
						<th>Mobile-1</th>
						<th>Mobile-2</th>
						<th>Office</th>
						<th> Actions </th>
					</tr>
					</thead>
					<tbody>
						@foreach($phones as $phone)
							<tr>
								<td>{{$phone->name}}</td>
								<td>{{$phone->designation}}</td>
								<td>{{$phone->mobile_1}}</td>
								<td>{{$phone->mobile_2}}</td>
								<td>{{$phone->office}}</td>
								<td>
								
								 <a class="btn btn-info btn-sm" href="{{route('phone.edit',['id'=>$phone->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
															
							</tr>
						@endforeach
					
					 
					
					</tbody>
				</table>
			</div>
	@else
	<h4 class="card-title">No Phone Record Entered</h4>

	@endif
		</div>
	</div>
@push('scripts')
	<!-- This is data table -->
	<script src="{{asset('Massets/plugins/datatables/datatables.min.js')}}"></script>
	<!-- start - This is for export functionality only -->
	<script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
	<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
	<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
	<!-- end - This is for export functionality only -->
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