@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
@section('Heading')
	<h3 class="text-themecolor">List of Notifications</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)">List of Notifications</a></li>
		
	
	</ol>
@stop
@section('content')
	<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			@if(auth()->user()->Notifications->count())
			<h4 class="card-title">List of Notifications</h4>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>From</th>
						<th>Subject</th>
						
						<th>Created at</th>
						<th> View </th>
						<th>Delete</th>
					</tr>
					</thead>
					<tbody>
						@foreach(auth()->user()->Notifications as $notification)
							<tr>
								<td>{{$notification->data['letter']['from']}}</td>
								<td>{{substr($notification->data['letter']['subject'],0,50)}}</td>
								<td>{{date('d-M-Y',strtotime($notification->created_at))}}</td>
								<td>
								
								 <a class="btn btn-info btn-sm" href="{{route('showNotification',['id'=>$notification->id])}}" data-toggle="tooltip" data-original-title="View"> <i class="fas fa-tv"></i></a>
								 @if($notification->read_at==NULL)
								 <span class="badge badge-danger">New</span>
								 @endif
															
								<td>
									<a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deleteNotification', ['id'=>$notification->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>
								</td>

							</tr>

						@endforeach
										
					</tbody>
				</table>
			</div>
			@else
			<h4 class="card-title">No Notification</h4>
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
	<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script> -->
	<!-- end - This is for export functionality only -->
	<script>
        $(document).ready(function() {
            $('#myTable').DataTable({
                stateSave: false,
                 "order": [[ 2, "desc" ]],
                dom: 'Blfrtip',
                buttons: [
                    {
                        extend: 'copyHtml5',
                        exportOptions: {
                            columns: [ 0, 1, 2,3]
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