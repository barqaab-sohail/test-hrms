@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
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

		                    <form action="{!!route('role.update', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                      @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Edit Role</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-9">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Role Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="name" value="{!! old('name', optional($data)->name) !!}"  class="form-control" placeholder="Enter Role Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-3">
		                                    <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Save</button>
		                                           
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                                </div>
		                            </div>

		                        </div>
		                         <hr>
		                       
		                    </form>

@if($roleIds->count()!=0)

@include('admin.role.list')
	
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
                "order": [[ 1, "asc" ]],
                "columnDefs": [
    				{ "width": "70%", "targets": 0, },
    				{"targets": [-1,-2], "className": "dt-center"}

 				 ],

                dom: 'Blfrtip',
                buttons: [
                    
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