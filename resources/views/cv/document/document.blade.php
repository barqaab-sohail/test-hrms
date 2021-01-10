
@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
@section('Heading')

@stop
@section('content')
    <div class="row">
        <div class="col-lg-12">
            <div class="card card-outline-info">
				<div class="row">
					<div class="col-lg-2">
					@include('layouts.cv.cvVerticalButton')
					</div>
		        	<div class="col-lg-10">
		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button"  id ="hideButton"  class="btn btn-info float-right">Add Document</button>
		                </div>

		                <div class="card-body" id="hideDiv">

		                    <form action="{{route('cvDocument.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" id="document" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Document</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Document Name<span class="text_requried">*</span></label>
		                                        		<input type="text" name="document_name" value="{{ old('document_name') }}" class="form-control">      
		                                        </div>
		                                    </div>
		                                </div>		                                
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                  
		                                       
		                                    </div>
		                                </div>

		        						<div class="col-md-2">
		        						
		        						</div>

		                                <div class="col-md-3">
	                                	 
		                                	@can('hr_edit_record')
		                                    <div class="form-group row">
		                                        <center >
		                                		<img src="{{asset('Massets/images/document.png')}}" class="img-round picture-container picture-src"  id="wizardPicturePreview"  title="" width="150" >
	                                			
		                                		</input>
		                                		<input type="file"  name="document" id="view" class="" required hidden>
		                                				                                		

				                                <h6 id="h6" class="card-title m-t-10">Click On Image to Add Document<span class="text_requried">*</span></h6>
		                                
					                            </center>
		                                       
		                                       <input type="number" name="cv_detail_id" value="{{session('cv_id')}}"   class="form-control " hidden>
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
		                                    	 
 

		                                        <div class="col-md-offset-3 col-md-9">
		                                        @can('hr_edit_record')
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Save</button>
		                                        @endcan

		                                            
		                                        </div>
		                                         
 

		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		                </div>
	
@if($documentIds->count()!=0)

@include('cv.document.list')		                    
		
@endif			                    
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