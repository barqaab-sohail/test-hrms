
@extends('layouts.master.master')
@section('Heading')
	@include('hr.hrHeading')
@stop
@section('content')
   
    <div class="row">
        <div class="col-lg-12">

            <div class="card card-outline-info">
			
				<div class="row">
					<div class="col-lg-2">
					@include('layouts.master.hrVerticalEditButton')
					</div>
        			
		        	<div class="col-lg-10">
						@can('entry', Auth::user())
		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('employee.index')}}'" class="btn btn-info float-right">Back</button>
		                    
		                </div>
		                @endcan
		                <div class="card-body">

		                    <form id="editBank" class="form-horizontal">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Bank Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        
		                                        	<label class="control-label text-right">Name of Bank<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="name" value="{!! old('name', optional($data)->name) !!}" class="form-control" placeholder="Enter Bank Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        
		                                        <label class="control-label text-right ">Account No.<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="account_no" value="{!! old('account_no', optional($data)->account_no) !!}" class="form-control " placeholder="Enter Account No. " required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Branch Name</label>
		                                        
		                                            <input type="text"  name="branch_name" value="{!! old('branch_name', optional($data)->branch_name) !!}" class="form-control"  >
		                                        </div>
		                                       
		                                       <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
		                                    </div>
		                                </div>
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        <label class="control-label text-right">Branch Code</label>
		                                        
		                                            <input type="text"  name="branch_code" value="{!! old('branch_code', optional($data)->branch_code) !!}" class="form-control"  >
		                                        </div>
		                                       <input type="text" id="id" name="id" value="{{$data->id}}"   class="form-control "  hidden>
		                                       
		                                    </div>
		                                </div>
		                                		                                
		                            </div>
		                            		                           
		                        </div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                    @can('entry', Auth::user())
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Edit Bank</button>
		                                            <button type="button" onclick="window.location.href='{{route('employee.index')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    @endcan
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		@if($bankIds->count()!=0)		                    
			                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Banks Detail</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Name of Bank</th>
						<th>Account No</th>
						<th>Branch Name</th>
						<th>Branch Code</th>
						@can('entry', Auth::user())<th> Actions </th> @endcan
					</tr>
					</thead>
					<tbody>
						@foreach($bankIds as $bankId)
							<tr>
								<td>{{$bankId->name}}</td>
								<td>{{$bankId->account_no}}</td>
								<td>{{$bankId->branch_name}}</td>
								<td>{{$bankId->branch_code}}</td>
								<td>
								@can('entry', Auth::user())
								 <a class="btn btn-info btn-sm" href="{{route('bank.edit',['id'=>$bankId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								  <button class="btn btn-danger btn-sm text-white" onclick="return confirm('Are you Sure to Delete')" id="delete,id={{$bankId->id}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></button>
								 @endcan
															
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
        	//Updated through AJAX
           $("#editBank").submit(function(e){
		        e.preventDefault();
        		
        		var id = $("#id").val();

        		var url="{!!route('bank.update')!!}";



	     			$.ajaxSetup({
	          			headers: {
	              		'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          			}
      				});
      				
	     			$.ajax({
		            url: url, //this is the submit URL
		            type: 'PUT', //or POST
		            data: $('#editBank').serialize(),

		            	success: function(data){
		            		if (data =="OK"){
		            			
		            			$('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data Sucessfuly Saved</strong></div>');

		            		}else{

		            			$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data is not  Saved</strong></div>');
		            			
		            		}
			        	}
	        		});

			});

           	//Delete through AJAX
            $('[id^=delete]').click(function(e){
		        e.preventDefault();
		        var id = $(this).attr('id');
		        
		        var url =  "{{route('bank.destroy',['id'=>$bankId->id])}}";

		        //alert('Not Deleted');
		        //type from POST to GET for deleted


		        $.ajaxSetup({
	          			headers: {
	              		'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          			}
      				});

      				
	     		
	     			$.ajax({
		            url: url, //this is the submit URL
		            type: 'DELETE', //or POST
		            data: $('#editBank').serialize(),
		            	success: function(data){
		            		if (data =="OK"){
		            			$('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data Sucessfuly Deleted</strong></div>');
		            		}else{
		            			$('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data is not  Deleted</strong></div>');
		            		}
			        	}
	        		});



		        
		    });

        </script>
    @endpush

@stop