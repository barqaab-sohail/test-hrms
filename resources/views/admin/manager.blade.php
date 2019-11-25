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

		                    <form action="{{route('role.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Manager Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-9">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Employee Name</label>
		                                        <div class="col-md-9">
		                                        <select  name="manager"  id="manager" class="form-control selectTwo" required>
                                                        <option value=""></option>
                                                        @foreach($employees as $employee)
														<option value="{{$employee->id}}" {{(old("manager_id")==$employee->id? "selected" : "")}}>{{$employee->first_name." ".$employee->middle_name." ".$employee->last_name." - "}} {{isset($employee->promotion_designation)?$employee->promotion_designation:$employee->appointment_designation}}</option>
                                                       @endforeach
                                                      
                                                    </select>
		                                            
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                
		                                
		                            </div>

		                        </div>
		                         <hr>
		                       
		                         <div id="append_data" class="table-responsive m-t-40">
		                         	
		                         </div>

		                    </form>

		        		</div>       
		        	</div>
		        </div>
            </div>
        </div>
    </div>
 @push('scripts')
        <script>
        function load_data(id){
  		var loadUrl = "{{url('manager')}}"+"/"+id;
    	    $("#append_data").load(loadUrl, function (){
    	    	$('#myTable').DataTable({
    	 	 	stateSave: false,
    
    	 	 	"destroy": true,
				});
    	    });
 		}
        
        $(document).ready(function() {

        	$('#manager').change(function() {
    			var id = $(this).val();
    			load_data(id);
			});
        });
            

        </script>
    @endpush

@stop