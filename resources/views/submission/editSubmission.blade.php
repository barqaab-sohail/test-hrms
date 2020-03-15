@extends('layouts.master.master')
@section('title', 'Submission')
@section('Heading')
	<h3 class="text-themecolor">Edit Submission Detail</h3>
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

		                    <form id="test" action="{{route('addSubmission.update',['id'=>$submission->id])}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                    @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Edit Submission Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <!--row 1 -->
		                            <div class="row">
		                                <div class="col-md-6">
		                                 <!--/span 1-1 -->
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Name of Project<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="project_name" data-validation="required" value="{{ old('project_name', $submission->project_name) }}"  class="form-control"  >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 1-2 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 date_input">
		                                        	<label class="control-label">Submission Date<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="submission_date" value="{{ old('submission_date', $submission->submission_date) }}"  class="form-control" readonly>
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
		                                        
		                                            <input type="text" name="submission_time" id="time" value="{{ old('submission_time', $submission->submission_time) }}" class="form-control" >
		                                            <br>
		                                           <i id="trash" class="fas fa-trash-alt text_requried"></i> 
		                                            
		                                        </div>
		                                    </div>
		                                </div>
		                               
	                               
		                            </div>
		                             <!--row 2-->
		                            <div class="row">
		                                <!--/span 2-1 -->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Submission Address<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" data-validation="required" name="submission_address"  value="{{ old('submission_address', $submission->submission_address) }}" class="form-control ">
													 
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span 2-2 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Submission Type</label>
		                                        	<select  name="sub_type_id"  class="form-control required selectTwo">
                                                       <option></option>
                                                        @foreach($types as $type)
														<option value="{{$type->id}}" {{(old("sub_type_id",$submission->sub_type_id)==$type->id? "selected" : "")}}>{{$type->type_name}}</option>
                                                        @endforeach
                                                      
                                                    </select>
		                                       		
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 2-3 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Contract Type</label>
		                                       		<select  name="sub_contract_type_id"  class="form-control required selectTwo">
                                                       <option></option>
                                                        @foreach($contractTypes as $contractType)
														<option value="{{$contractType->id}}" {{(old("sub_contract_type_id", $submission->sub_contract_type_id)==$contractType->id? "selected" : "")}}>{{$contractType->contract_type_name}}</option>
                                                        @endforeach
                                                      
                                                    </select>
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
		                                        
		                                            <input type="text" data-validation="required" name="client_name"  value="{{ old('client_name',$submission->sub_client->client_name) }}" class="form-control ">
													 
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span 3-2 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Authorize Person</label>
		                                       		<input type="text"  name="authorize_person" value="{{ old('authorize_person', $submission->sub_client->authorize_person) }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 3-3 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Designation</label>
		                                       		<input type="text"  name="designation" value="{{ old('designation',$submission->sub_client->designation) }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span 3-4 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Client Email</label>
		                                       		<input type="email"  name="email" value="{{ old('email',$submission->sub_client_address->email) }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                            </div>

		                              <!--row 4-->
		                            <div class="row">
		                                <!--/span 4-1 -->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Client Address<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="address"  value="{{ old('address',$submission->sub_client_address->address) }}" class="form-control ">
													 
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span 4-2 -->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Client Phone</label>
		                                       		<input type="text"  name="phone" value="{{ old('phone',$submission->sub_client_address->phone) }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 4-3 -->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Client Fax</label>
		                                       		<input type="text"  name="fax"  value="{{ old('fax',$submission->sub_client_address->fax) }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span 4-4 -->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Mobile</label>
		                                       		<input type="text"  name="mobile" value="{{ old('mobile',$submission->sub_client_address->mobile) }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                
		                            </div>
		                     

		               
		                            
		                <!--row 5-->
		                            <div class="row" >
		                                
		                            <!--/span 6-1 -->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 remove_div">
		                                        	<label class="control-label text-right">Scope of Services</label>
		                                            <textarea type="text" rows=3 cols=20 name="scope_of_services" class="form-control" placeholder="Enter Scope of Services required from the Consultant" >{{ old('scope_of_services',$submission->scope_of_services) }}</textarea> 
		                                        </div>
		                                    </div>
		                                </div>

		                                <!--/span 6-2 -->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 remove_div">
		                                        	<label class="control-label text-right">Scope of Work</label>
		                                            <textarea type="text" rows=3 cols=20 name="scope_of_work" class="form-control" placeholder="Enter Scope of Work of the Project" >{{ old('scope_of_work', $submission->scope_of_work) }}</textarea> 
		                                        </div>
		                                    </div>
		                                </div>
									   
		                            </div>

		                <!--row 6-->
		                            <div class="row" >
		                                
		                            <!--/span 6-1 -->

		                            	<div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 remove_div">
		                                        	<label class="control-label text-right">Total Marks</label>
		                                        	<select  name="total_marks"  class="form-control selectTwo">
		                                           	<option value=""></option>
		                                           	<option value="100" {{(old("evaluation_ratio",$submission->total_marks)=="100"? "selected" : "")}}>100</option>
		                                           	<option value="1000" {{(old("evaluation_ratio",$submission->total_marks)=="1000"? "selected" : "")}}>1000</option>
		                                       
		                                           	</select>
		                                        	
		                                           
		                                        </div>
		                                    </div>
		                                </div>
		                                 <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 remove_div">
		                                        	<label class="control-label text-right">Evaulation Ratio</label>
		                                        	<select  name="evaluation_ratio"  class="form-control selectTwo">
		                                           	<option value=""></option>
		                                           	<option value="80:20" {{(old("evaluation_ratio",$submission->evaluation_ratio)=="80:20"? "selected" : "")}}>80:20</option>
		                                           	<option value="90:10" {{(old("evaluation_ratio",$submission->evaluation_ratio)=="90:10"? "selected" : "")}}>90:10</option>
		                                           	<option value="70:30" {{(old("evaluation_ratio",$submission->evaluation_ratio)=="70:30"? "selected" : "")}}>70:30</option>
		                                           	<option value="Least Cost" {{(old("evaluation_ratio",$submission->evaluation_ratio	)=="Least Cost"? "selected" : "")}}>Least Cost</option>
		                                           	</select>
		                                        	
		                                           
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-8">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 remove_div">
		                                        	<label class="control-label text-right">Comments</label>
		                                        	<input type="text" name="comments"  value="{{ old('comments',$submission->comments) }}" class="form-control ">
		                                           
		                                        </div>
		                                    </div>
		                                </div>
									   
		                            </div>
 						
 						
		                            <!--row 7-->
		                            <div class="row" >
		                           
										<!--/span 7-1 -->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Attached Document<span class="text_requried">*</span></label><br>
		                                       		<input type="file" name="attachment" data-validation="mime size" data-validation-max-size="1M" data-validation-allowing="doc, docx, pdf" value="{{ old('attachment') }}"  class="form-control" ><span class="text_requried">Attach RFP or EOI Document (doc, docx and pdf only)</span>
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