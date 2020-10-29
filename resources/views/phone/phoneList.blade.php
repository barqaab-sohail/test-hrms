
@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
@section('Heading')
	<h3 class="text-themecolor">Contact Numbers</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
		
	
	</ol>
@stop
@section('content')
	<div class="card">
	  <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button"  id ="hideButton"  class="btn btn-info float-right">Add Contact</button>
		</div>
		<div class="card-body" >
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
		<div id="hideDiv">
		
		@include('phone.import')

		

		<div class="container">
   					<h3 align="center">Add Contact Number</h3>

				   	<form method="post" enctype="multipart/form-data" action="{{route('contactNumber.store')}}">
				    {{ csrf_field() }}
				   		
				   		
						<div class="form-group" >
						     		<div class="row">
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Full Name<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="name" value="{!! old('name')?? isset($data)?$data->name:'' !!}"  class="form-control" placeholder="Enter Full Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Designation</label>
		                                            <input type="text" name="designation" value="{!! old('designation')?? isset($data)?$data->designation:'' !!}" class="form-control" placeholder="Enter Middle Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span-->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Mobile No.<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="mobile_1" value="{!! old('mobile_1')?? isset($data)?$data->mobile_1:'' !!}" class="form-control" placeholder="Enter Mobile Number" required>
		                                        </div>
		                                    </div>
		                                </div>
				                    </div>
				                    <div class="row">
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Address</label><br>
		                                       		<input type="text"  name="address" value="{!! old('address')?? isset($data)?$data->address:'' !!}"  class="form-control" placeholder="Enter Full Address" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">2nd Mobile No.</label>
		                                            <input type="text" name="mobile_2" value="{!! old('mobile_2')?? isset($data)?$data->mobile_2:'' !!}" class="form-control " placeholder="Enter 2nd Mobile Number" >
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span-->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Email</label>
		                                        
		                                            <input type="email" name="email" value="{!! old('email')?? isset($data)?$data->email:'' !!}" class="form-control " placeholder="Enter Email Address" >
		                                        </div>
		                                    </div>
		                                </div>
				                    </div>
								
				    	</div>
				   
				 
				   	<button type="submit" class="btn btn-success btn-prevent-multiple-submits" >Add Contact Detail</button>
				

				   </form>
			<hr>
		</div>
	</div>

	

	@if($phones->count()!=0)
	
		@include('phone.list')

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
                ],
                "columnDefs": [
    				{ "width": "15%", "targets": 2 }
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