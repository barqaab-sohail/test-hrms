@extends('layouts.master.master')
@section('title', 'Submission')
@section('Heading')
	<h3 class="text-themecolor">Submission Participant</h3>
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
					@include('layouts.submission.submissionVerticalButton')
					</div>
		        	<div class="col-lg-10">
						 


		                <div class="card-body">

		                    <form id="test" action="{{route('participant.create')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                    @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Submission Participant</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <!--row 1 -->
		                            <div class="row">
		                                <div class="col-md-6">
		                                 <!--/span 1-1 -->
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Name of Project<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="project_name" data-validation="required" value="{{ old('project_name') }}"  class="form-control"  >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 1-2 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 date_input">
		                                        	<label class="control-label">Submission Date<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="submission_date" value="{{ old('submission_date') }}"  class="form-control" readonly>
		                                             <br>
		                                           <i class="fas fa-trash-alt text_requried"></i> 
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 1-3 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 time_input">
		                                        	<label class="control-label text-right">Submission Time<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="submission_time" id="time" value="{{ old('submission_time') }}" class="form-control" >
		                                            <br>
		                                           <i id="trash" class="fas fa-trash-alt text_requried"></i> 
		                                            
		                                        </div>
		                                    </div>
		                                </div>
		                               
	                               
		                            </div>
		                            
		                              <!--row 3-->
		                            <div class="row">
		                                <!--/span 3-1 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Client Name<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" data-validation="required" name="client_name"  value="{{ old('client_name') }}" class="form-control ">
													 
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span 3-2 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Authorize Person</label>
		                                       		<input type="text"  name="authorize_person" value="{{ old('authorize_person') }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 3-3 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Designation</label>
		                                       		<input type="text"  name="designation" value="{{ old('designation') }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span 3-4 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Client Email</label>
		                                       		<input type="email"  name="email" value="{{ old('email') }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                            </div>

		                        

		              <!-- row-10 -->
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row"> 
		                                       <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Upload</button>
		                                            
		                                        </div>
		                                     
 

		                                    </div>
		                                </div>
		                            </div>
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
	$(document).ready(function(){
	
	$.validate();
	$('form').on('submit',function(e){
		$(".required").each(function(){
			if($(this).val()==''){
				alert($(this).closest('div').find('label').text()+' value is missing');
				$(this).closest('div').find('label').append("<br><span style='color:red;'>This Field is required</span>");

				e.preventDefault();
			}else
			{
				return true;
			}
		});
	 });
	
	 $("#cv").change(function(){
	 	var fileType = this.files[0].type;
	 	var fileSize = this.files[0].size;

	 	if (fileSize> 2048000){
		        	alert('File Size is bigger than 2MB');
		        	$(this).val('');
		}else{

		    if((fileType!='application/vnd.openxmlformats-officedocument.wordprocessingml.document')&&(fileType!='application/msword')&&(fileType!='application/pdf')){

	 		alert('Only pdf, doc and docx attachment allowed');
	 		$(this).val('');
	 		}
	 	}

	 	
	 });
		
	
		
	
	
	});	
	
</script>

        

    @endpush

@stop