@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Initial Leave Balance</h3>
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
   					<h3 align="center">Add Initial Balance</h3>

				   	<form method="post" enctype="multipart/form-data" action="{{route('storeInitialBalance')}}">
				    {{ csrf_field() }}
				    <div class="row">
		                                <!--/span-->
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-8">
		                                        	<label class="control-label text-right ">Name of Employee</label>
		                                        	<select id="employee_id" name="employee_id"  class="form-control" required>
                                                        <option value=""></option>
                                                        @foreach($employees as $employee)
														<option value="{{$employee->id}}" {{(old("employee_id")==$employee->id? "selected" : "")}}>{{$employee->first_name." ".$employee->middle_name." ".$employee->last_name}}</option>
                                                        @endforeach
                                                      
                                                    </select>
		                                            
		                                        </div>
		                                        <div class="col-md-4">
		                                        	<label class="control-label text-right ">Leave Type</label>
		                                        	<select id="leave_type" name="leave_type_id"  class="form-control" required>
                                                        <option value=""></option>
                                                        @foreach($leaveTypes as $leaveType)
														<option value="{{$leaveType->id}}" {{(old("leave_type_id")==$leaveType->name? "selected" : "")}}>{{$leaveType->name}}</option>
                                                        @endforeach
                                                      
                                                    </select>
		                                            
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-3">
		                                        	<label class="control-label text-right">Balance</label>
		                                             <input type="number" id="balance" name="balance" value="{{ old('balance')}}"   class="form-control prc"  >
		                                        </div>
		                                        <div class="col-md-9 date_input">
											   		<label class="control-label text-right">Effective Date</label>
		                                             <input type="text" id="effective_date" name="effective_date" value="{{ old('effective_date')}}"   class="form-control prc"  readonly>
		                                             @can('entry', Auth::user())
		                                            <br>
		                                            <i class="fas fa-trash-alt text_requried"></i> 
		                                            @endcan
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                             </div>
				   			<button type="submit" class="btn btn-success">Save</button>
				   </form>
				   
		</div>

		<hr>
@if($initialLeaves->count()!=0)
			<h4 class="card-title">List of Initial Leave Balance</h4>
				
		
			<div id="append_data" class="table-responsive m-t-40">
				
				
			</div>
		
	@else
	<h4 class="card-title">No Initial Leave Balance Entered</h4>

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

       
   /*     $('#append').click(function(e){
		    e.preventDefault();

		    var url = "{{route('load_data')}}";

	        $.ajax({
			            url: url, //this is the submit URL
			            type: 'GET', //or POST
			               	success: function(data){
			            	
				            	$('#append_data').append(data);
				            	$('#append').hide();

				        	}
		    });
		
 		});*/
        var url = "{{route('load_data')}}";
        $("#append_data").load(url);
 		
 		$(document).ready(function () {
 		//Ajax Update Initial Leave
			$('a[id^=update]').click(function(e){
				e.preventDefault();
				var updateId = $(this).attr('id');
				var arr = updateId.split('=');
				var id = arr[1];
				var employeeName = $(this).closest('tr').find('td:nth-child(1)').text();
				var leaveType = $(this).closest('tr').find('td:nth-child(2)').text();
				var balance = $(this).closest('tr').find('td:nth-child(3)').text();
				var effectiveDate = $(this).closest('tr').find('td:nth-child(4)').text();
				
				
				$("#leave_type option").filter(function() {
  				//may want to use $.trim in here
  				return $(this).text() == leaveType;
				}).prop('selected', true);

				$("#employee_id option").filter(function() {
  				//may want to use $.trim in here
  				return $(this).text() == employeeName;
				}).prop('selected', true);

				$('#leave_type, #employee_id').select2({
            		width: "100%",
            		theme: "classic",
        		}).trigger('change');							        

				$("#balance").val(balance);
				$("#effective_date").val(effectiveDate);
								        
			});

		});

	</script>
	@endpush
@stop