
@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Employee Name: {{$employee->first_name. " ".$employee->last_name}}</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
		
		
	</ol>
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

		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-info float-right">Back</button>
		                    
		                </div>
		                <div class="card-body">

		                    <form action="{!!route('editDocument', ['id'=>optional($data)->id])!!}"  id="document" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Document</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Document Title</label>
		                                        <div class="col-md-7">
		                                             <select  name="document_name" id="document_name"    class="form-control" required>

                                                       
                                                        <option value="{{$data->document_name}}">{{$data->document_name}}</option>
                                                        <option value="CNIC Front" @if($data->document_name =="CNIC Front") selected="selected"@endif>CNIC Front </option>
                                                        <option value="CNIC Back"  @if($data->document_name =="CNIC Back") selected="selected"@endif>CNIC Back </option>
                                                        <option value="Appointment Letter"  @if($data->document_name =="Appointment Letter") selected="selected"@endif>Appointment Letter </option>
                                                        <option value="Other"  {{ old('name') == "Other" ? 'selected' : '' }}>Other</option>
                                                        
                                                    </select>


		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-4">Reference No.</label>
		                                        <div class="col-md-8">
		                                            <input type="text" name="reference_no" value="{!! old('reference_no', optional($data)->reference_no) !!}" class="form-control " placeholder="Enter Reference No" >
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Date</label>
		                                        <div class="col-md-6">
		                                            <input type="date"  name="date" value="{!! old('date', optional($data)->date) !!}" class="form-control"  >
		                                        </div>
		                                       
		                                       
		                                    </div>
		                                </div>
		        						<div class="col-md-2">
		        						</div>
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <center >
		                                        @if($data->type!='application/pdf')
		                                		<img  src="{{asset(isset($data->file_name)? 'upload/documents/'.$data->file_name: 'Massets/images/document.png') }}" class="img-round picture-container picture-src"  id="wizardPicturePreview" title="" width="150" />
		                                		@else
		                                		<img  src="{{asset('Massets/images/document.png')}}" class="img-round picture-container picture-src"  id="wizardPicturePreview"  title="" width="150" >
		                                		@endif

		                                		<input type="file"  name="picture" id="wizard-picture" class=""  hidden>
		                                				                                		

				                                <h6 id="h6" class="card-title m-t-10">Click On Image to Change New Document</h6>
		                                
					                            </center>
		                                       
		                                       <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
		                                    </div>
		                                </div>
		                                		                                
		                            </div>
									 <div class="row">
		                                <div class="col-md-7" id="pdf">
		                                	@if($data->type=='application/pdf')
		                            		<embed id="pdf" src="{{asset('upload/documents/'.$data->file_name)}}#toolbar=0&navpanes=0&scrollbar=0"  type="application/pdf" height="300" width="100%" />
		                            		@endif
		                            		
		                            	</div>
		                            </div>
		                            		                           
		                        </div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Add Document</button>

		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		@if($documentIds->count()!=0)		                    
			                    <br>
			                    <hr>
			                    <br>
		<div class="card">
		<div class="card-body">
			<!--<div class="float-right">
				<input id="month" class="form-control" value="" type="month">
			</div>-->
			<h2 class="card-title">Stored Documents</h2>
			
			<div class="table-responsive m-t-40">
				
				<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Document Name</th>
						<th>View</th>
						
						
						@if(Auth::user()->role_id==1)<th> Actions </th> @endif
					</tr>
					</thead>
					<tbody>
						@foreach($documentIds as $documentId)
							<tr>
								<td>{{$documentId->document_name}}</td>
								@if($documentId->type!='application/pdf')
								<td><img  id="viewFile" src="{{asset(isset($documentId->file_name)? 'upload/documents/'.$documentId->file_name: 'Massets/images/document.png') }}" href="{{asset(isset($documentId->file_name)? 'upload/documents/'.$documentId->file_name: 'Massets/images/document.png') }}" width=30/></td>
								@else
								<td><img  id="viewFile" src="{{asset('Massets/images/document.png')}}" href="{{asset(isset($documentId->file_name)? 'upload/documents/'.$documentId->file_name: 'Massets/images/document.png') }}" width=30/></td>
								@endif
								
								
								<td>
								@if(Auth::user()->role_id==1)
								 <a class="btn btn-info btn-sm" href="{{route('document.edit',['id'=>$documentId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								 <a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deleteDocument',['id'=>$documentId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>
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
        $(document).ready(function(){
            
        	$("#document_name").change(function (){
				var other = $('#document_name').val();
					if (other == 'Other'){
					var name=prompt("Enter Document Name");
					if (name === null) {

     				   return; 
    				}

					var select = $('#document_name');
					select.empty().append(new Option(name, name, true, true),new Option('CNIC Front', 'CNIC Front'),new Option('CNIC Back', 'CNIC Back'),new Option('Appointment Letter', 'Appointment Letter'));
					}
			});

        	$("#document").submit(function(e) {
				var name = $('#document_name').val();

				if (name=='Other'){
					alert('Please Enter Valid Document Name');
					e.preventDefault();
				}

			});





			// Prepare the preview for profile picture
		    $("#wizard-picture").change(function(){
		        	var fileName = this.files[0].name;
		        	var fileType = this.files[0].type;
		        	var fileSize = this.files[0].size;

		        	
		        	 //Restrict File Size Less Than 500kb
		        if (fileSize> 512000){
		        	alert('File Size is bigger than 500kb');
		        	$(this).val('');
		        }else{
		        	//Restrict File Type
		        	if ((fileType =='image/jpeg') || (fileType=='image/png')){
                    	$( "#pdf" ).hide();
                    	readURL(this);
                    	document.getElementById("h6").innerHTML = "Image is Attached";
                	}else if(fileType=='application/pdf')
                	{
                	readURL(this);// for Default Image
                	
                	document.getElementById("pdf").src="{{asset('Massets/images/document.png')}}";	
                	$( "#pdf" ).show();
                	}else{
                		alert('Only PDF, JPG and PNG Files Allowed');
		        	$(this).val('');

                	}
                }
                
            });
        });
            function readURL(input) {
            	var fileName = input.files[0].name;
		         var fileType = input.files[0].type;
		        //var fileType = fileName.split('.').pop();
		        		        	
		        if (fileType !='application/pdf'){
            	//Read URL if image
	                if (input.files && input.files[0]) {
	                    var reader = new FileReader();
	                    
		                    reader.onload = function (e) {
		                        $('#wizardPicturePreview').attr('src', e.target.result).fadeIn('slow');
		                    }
	                   		reader.readAsDataURL(input.files[0]);
	               	}
	                	
	            }else{
	               
	                if (input.files && input.files[0]) {
	                    var reader = new FileReader();
	                    
		                    reader.onload = function (e) {
		                        $('embed').attr('src', e.target.result.concat('#toolbar=0&navpanes=0&scrollbar=0'));
		                    }
	                   		reader.readAsDataURL(input.files[0]);
	               	}	
	                document.getElementById("wizardPicturePreview").src="{{asset('Massets/images/document.png')}}";	

	                document.getElementById("h6").innerHTML = "PDF File is Attached";
			    }           
            }
            

			$("#wizardPicturePreview" ).click (function() {
               $("input[id='wizard-picture']").click();

            });

            $(function(){
 			 $('#viewFile').EZView();
			});
			
			
        </script>
    @endpush

@stop