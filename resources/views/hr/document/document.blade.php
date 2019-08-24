
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
						@can('entry', Auth::user())
		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-info float-right">Back</button>
		                    
		                </div>
		                @endcan
		                <div class="card-body">

		                    <form action="{{route('storeDocument')}}" method="post" class="form-horizontal" id="document" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Document</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Document Name<span class="text_requried">*</span></label>
		                                        
		                                             <select  name="document_name" id="document_name"    class="form-control" required>
                                                        <option value=""></option>
                                                        <option value="CNIC Front"  {{ old('CNIC Front') == "CNIC Front" ? 'selected' : '' }}>CNIC Front</option>
                                                        <option value="CNIC Back"  {{ old('CNIC Back') == "CNIC Back" ? 'selected' : '' }}>CNIC Back</option>
                                                        <option value="Appointment Letter"  {{ old('Appointment Letter') == "Appointment Letter" ? 'selected' : '' }}>Appointment Letter</option>
                                                        <option value="HR Form"  {{ old('HR Form') == "HR Form" ? 'selected' : '' }}>HR Form</option>
                                                        <option value="Joining Report"  {{ old('Joining Report') == "Joining Report" ? 'selected' : '' }}>Joining Report</option>
                                                        <option value="Other"  {{ old('name') == "Other" ? 'selected' : '' }}>Other</option>
                                                        
                                                    </select>
		                                            
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Reference No.</label>
		                                        
		                                            <input type="text" name="reference_no" value="{{ old('reference_no') }}" class="form-control " placeholder="Enter Reference No" >
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-6 date_input">
		                                        	<label class="control-label text-right ">Date</label>
		                                        
		                                            <input type="text"  id="date" name="date" value="{{ old('date') }}" class="form-control" readonly  >
													@can('entry', Auth::user())
		                                            <br>
		                                            <i class="fas fa-trash-alt text_requried"></i>
		                                            @endcan
		                                        </div>
		                                       
		                                       
		                                    </div>
		                                </div>
		        						<div class="col-md-2">
		        						</div>
		                                <div class="col-md-3">
		                                	@can('entry', Auth::user())
		                                    <div class="form-group row">
		                                        <center >
		                                		<img src="{{asset('Massets/images/document.png')}}" class="img-round picture-container picture-src"  id="wizardPicturePreview"  title="" width="150" >
	                                			
		                                		</input>
		                                		<input type="file"  name="document" id="view" class="" required hidden>
		                                				                                		

				                                <h6 id="h6" class="card-title m-t-10">Click On Image to Add Document<span class="text_requried">*</span></h6>
		                                
					                            </center>
		                                       
		                                       <input type="number" name="employee_id" value="{{session('employee_id')}}"   class="form-control " hidden>
		                                    </div>
		                                    @endcan
		                                </div>
		                                		                                
		                            </div>
									 <div class="row">
		                                <div class="col-md-12" id="pdf">
		                            		<embed id="pdf" src="{{asset('Massets/images/02.pdf')}}#toolbar=0&navpanes=0&scrollbar=0"  type="application/pdf" height="300" width="100%" />

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
		                                            <button type="submit" class="btn btn-success">Add Document</button>

		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                        @endcan
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
				
				<table id="myTableStored" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Document Name</th>
						<th>View</th>
						
						
						@can('entry', Auth::user())<th> Actions </th> <th></th>@endcan
					</tr>
					</thead>
					<tbody>
						@foreach($documentIds as $documentId)
							<tr>
								<td>{{$documentId->document_name}}</td>
								@if($documentId->type!='application/pdf')
								<td><img  id="ViewIMG" src="{{asset(isset($documentId->file_name)? 'storage/'.$documentId->file_path.$documentId->file_name: 'Massets/images/document.png') }}" href="{{asset(isset($documentId->file_name)?  'storage/'.$documentId->file_path.$documentId->file_name: 'Massets/images/document.png') }}" width=30/></td>
								@else
								<td><img  id="ViewPDF" src="{{asset('Massets/images/document.png')}}" href="{{asset(isset($documentId->file_name)? 'storage/'.$documentId->file_path.$documentId->file_name: 'Massets/images/document.png') }}" width=30/></td>
								@endif
								
								
								
								@can('entry', Auth::user())
								<td>
								 <a class="btn btn-info btn-sm" href="{{route('document.edit',['id'=>$documentId->id])}}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>

								</td>
								<td>
								  <a class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure to Delete')" href="{{route('deleteDocument',['id'=>$documentId->id])}}" data-toggle="tooltip" data-original-title="Delete"> <i class="fas fa-trash-alt"></i></a>
								  </td>
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



            $( "#pdf" ).hide();
			// Prepare the preview for profile picture
		    $("#view").change(function(){
		        	var fileName = this.files[0].name;
		        	var fileType = this.files[0].type;
		        	var fileSize = this.files[0].size;
		        	//var fileType = fileName.split('.').pop();
		        	

		        //Restrict File Size Less Than 500kb
		        if (fileSize> 2048000){
		        	alert('File Size is bigger than 2MB');
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
               $("input[id='view']").click();

            });

            $(function(){
 			 $('#ViewPDF, #ViewIMG').EZView();
			});
			
			
        </script>
    @endpush

@stop