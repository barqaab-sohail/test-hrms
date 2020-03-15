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

		                            <div class="row">

		                                <div class="col-md-6">
		                            	<h3 class="box-title">Submission Participant</h3>
		                            	</div>
		                            	
		                            </div>
		                           
		                            <hr class="m-t-0 m-b-40">

		                            <div class="row">
		                            	<div class="col-md-4">
		                            	<h4>Name of Project: {{ $submission->project_name }}
		                            	</h4>
		                            	
		                            	</div>
		                            	
		                            	
		                            </div>
		                            <br>
		                            <hr class="m-t-0 m-b-40">

		                            <!--row 1 -->
		                            <div class="row clone" id="clone_1">
		                                <div class="col-md-10">
		                                 <!--/span 1-1 -->
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Name of Participant</label><br>
		                                       		<input type="text" name="participant_name[]" data-validation="required" value="{{ old('participant_name.0') }}"  class="form-control participant_name"  >
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-2">
		                                    
		                                			<div class="float-right">
		                                			<br>
			                                        <button type="button" name="add" id="add_participant" class="btn btn-success add" >Add</button>
													</div>
											
										</div>
		                                  
		                            </div>
		                            

		                        

		              <!-- row-10 -->
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-12">
		                                    <div class="row"> 
		                                       <div class="col-md-3">
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Save</button>
		                                            
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


	//Dynamic add education
		// Add new element
		 $("#add_participant").click(function(){
		 	
		  // Finding total number of elements added
		  var total_element = $(".clone").length;
		 	
		  // last <div> with element class id
		  var lastid = $(".clone:last").attr("id");
		  var split_id = lastid.split("_");
		  var nextindex = Number(split_id[1]) + 1;
		  var max = 5;

		  // Check total number elements
		  if(total_element < max ){
		   //Clone education div and copy 
		
		   	var clone = $("#clone_1").clone();
		   	clone.find(".error, .valid, .has-success").removeClass('error valid has-success');
		  	clone.prop('id','clone_'+nextindex).find('input:text').val('');
		   	clone.find("#add_participant").html('Remove').prop("class", "btn btn-danger remove_clone");
		   	clone.insertAfter("div.clone:last");
		  
		   
		  }
		 
		});
		 // Remove element
		 $(document).on("click", '.remove_clone', function(){
		 $(this).closest(".clone").remove();
 		}); 
		
	
	});	
	
</script>

    @endpush

@stop