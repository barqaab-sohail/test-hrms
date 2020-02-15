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
		                    <button type="button" onclick="window.location.href='{{route('cvServices.index')}}'" class="btn btn-info float-right">Back to List</button>
		                </div>
		                <div class="card-body">

		                    <form action="{!!route('addDegree.update', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                      @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Edit Degree</h3>
		                            <hr class="m-t-0 m-b-40">
		                               
		                                
		                                <div class="row  justify-content-md-center">

		                            	<div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Degree Name<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="degree_name" value="{!! old('degree_name', optional($data)->degree_name) !!}"   class="form-control " placeholder="Enter Degree Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Level</label>
		                                        	<select  name="level"  class="form-control selectTwo" >
                                                        <option value=""></option>
													@for ($i = 10; $i <= 20; $i++)
    												<option value="{{$i}}"
													@if($i == $data->level) selected="selected" @endif
    												>{{ $i }}</option>
													@endfor
                                                    </select>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-1">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <br>
			                                        <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Save</button>
		                                        </div>
		                                    </div>
		                                </div>  
		                                
		                            </div>
		                                

		                        </div>
		                         <hr>
		                       
		                    </form>

@if($degrees->count()!=0)

@include('cv.services.addDegree.list')
	
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