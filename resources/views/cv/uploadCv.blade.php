@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
@section('Heading')
	<h3 class="text-themecolor">CV Detail</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
		
		
	</ol>
@stop
@section('content')

    <div class="row">
        <div class="col-lg-12">

            <div class="card card-outline-info">
			
				<div class="row">
				
      	
		        	<div class="col-lg-12">
						 


		                <div class="card-body">

		                    <form id="test" action="{{route('uploadCv.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">CV Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <!--row 1 -->
		                            <div class="row">
		                                <div class="col-md-3">
		                                 <!--/span 1-1 -->
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Full Name<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="full_name" value="{{ old('full_name') }}"  class="form-control" placeholder="Enter Full Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 1-2 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 ">
		                                        	<label class="control-label">Father Name</label>
		                                        
		                                            <input type="text"  name="father_name" value="{{ old('father_name') }}"  class="form-control" placeholder="Enter Father Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 1-3 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">CNIC<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="cnic" id="cnic" pattern="[0-9.-]{15}" title= "13 digit Number without dash" value="{{ old('cnic') }}" class="form-control" onkeyup='addHyphen(this)'  placeholder="Enter CNIC without dash" >
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span 1-4 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 date_input">
		                                        	<label class="control-label text-right">Date of Birth<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" id="date_of_birth" name="date_of_birth" value="{{ old('date_of_birth') }}" class="form-control " placeholder="Enter Date of Birth" readonly>
													 
		                                            <br>
		                                           <i class="fas fa-trash-alt text_requried"></i> 
		                                        </div>
		                                    </div>
		                                </div>
	                               
		                            </div>
		                             <!--row 2-->
		                            <div class="row">
		                                <!--/span 2-1 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 date_input">
		                                        	<label class="control-label text-right">Job Starting Date<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" id="job_starting_date" name="job_starting_date" value="{{ old('job_starting_date') }}" class="form-control " placeholder="Enter Date of Birth" readonly>
													 
		                                            <br>
		                                           <i class="fas fa-trash-alt text_requried"></i> 
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 2-1 -->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label ">Address</label><br>
		                                       		<input type="text"  name="address" value="{{ old('address') }}"  class="form-control" placeholder="Enter Address" >
		                                        </div>
		                                    </div>
		                                </div>
		                               
		                                <!--/span 2-2 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">City<span class="text_requried">*</span></label>
		                                       		<input type="text"  name="city" value="{{ old('city') }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                            </div>
		                     

		               <!--row 3-->
		                            <div class="row" >
		                            <!--/span 3-1 -->
		                           		<div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 remove_phone_div">
		                                        	<label class="control-label text-right">Province<span class="text_requried">*</span></label>
		                                       		<input type="text"  name="province" value="{{ old('province') }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 3-2 -->
		                                <div class="col-md-3">   	
		                                    <div class="form-group row">
		                                        <div class="col-md-12 remove_phone_div">
		                                       		<label class="control-label text-right">Country<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="country" value="{{ old('country') }}" class="form-control" >
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span 3-3 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 remove_phone_div">
		                                        	<label class="control-label text-right">Email</label>
		                                            <input type="email" name="email" value="{{ old('email') }}" class="form-control" placeholder="Enter Email Address " >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 3-4 -->
		                                <div class="col-md-3 phone" id="phone_1">
		                                	<div class="form-group row">
		                                        <div class="col-md-8	">
		                                        	<label class="control-label text-right">Mobile Number<span class="text_requried">*</span></label>
		                                            <input type="text" name="phone[]" value="{{ old('phone') }}" class="form-control" >

		                                        </div>
												<div class="col-md-4">
		                                        <br>
			                                        <div class="float-right">
			                                        <button type="button" name="add" id="add_phone" class="btn btn-success add" >+</button>
													</div>
		                                        </div>
		                                    </div>
		                                </div>
		                             
		                            </div>

		                             <!--row 4-->
		                            <div class="row education" id='edu_1' >
		                                <div class="col-md-3">
		                                	<!--/span 4-1 -->
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Name of Degree<span class="text_requried">*</span></label><br>
		                                       			<select  name="degree_name[]"  class="form-control selectTwo">
                                                        <option value=""></option>
                                                        @foreach($degrees as $degree)
														<option value="{{$degree->id}}" {{(old("degree_name")==$degree->id? "selected" : "")}}>{{$degree->degree_name}}</option>
                                                        @endforeach
                                                      
                                                    </select>

		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 4-2 -->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 ">
		                                        	<label class="control-label">Name of Institute<span class="text_requried">*</span></label>
		                                            <input type="text" name="institute[]" value=""  class="form-control" placeholder="Enter Institute Name" >

		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 4-3 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-8">
		                                        	<label class="control-label text-right">Passing Year<span class="text_requried">*</span></label>
		                                        
		                                            <select  name="passing_year[]"  class="form-control selectTwo" data-validation="required">

													<option value=""></option>
													@for ($i = 1958; $i <= now()->year; $i++)
    												<option value="{{$i}}">{{ $i }}</option>
													@endfor

													</select>

		                                        </div>
												<div class="col-md-4">
		                                        <br>
			                                        <div class="float-right">
			                                        <button type="button" name="add" id="add" class="btn btn-success add" >+</button>
													</div>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                            </div>
		                             <!--row 5-->
		                            <div class="row specialization" id='spe_1' >
		                                <div class="col-md-3">
		                                	<!--/span 5-1 -->
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Speciality<span class="text_requried">*</span></label><br>

		                                       		<select  name="speciality_name[]" id=speciality_name class="form-control" >
                                                        <option value=""></option>
                                                        
                                                        @foreach($specializations as $specialization)
														
														<option value="{{$specialization->id}}" {{(old("speciality_name")==$specialization->id? "selected" : "")}}>{{$specialization->specialization_name}}</option>

                                                        @endforeach
                                                      
                                                    </select>

		                                       		

		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 5-2 -->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 ">
		                                        	<label class="control-label">Field of Speciality<span class="text_requried">*</span></label>

		                                        	<select  name="field_name[]" id=field_name class="form-control" >
                                                        <option value=""></option>
                                                        
                                                        @foreach($fields as $field)
														
														<option value="{{$field->id}}" {{(old("field_name")==$field->id? "selected" : "")}}>{{$field->field_name}}</option>

                                                        @endforeach
                                                      
                                                    </select>
		                                        
		                                            
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 5-3 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-8">
		                                        	<label class="control-label text-right">Years of Experience<span class="text_requried">*</span></label>
		                                        
		                                            <select  name="year[]"  class="form-control">

													<option value=""></option>
													@for ($i = 1; $i <= 50; $i++)
    												<option value="{{$i}}">{{ $i }}</option>
													@endfor

													</select>

		                                        </div>
												<div class="col-md-4">
		                                        <br>
			                                        <div class="float-right">
			                                        <button type="button" name="add" id="add_spe" class="btn btn-success add" >+</button>
													</div>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                            </div>
		                            
		                <!--row 6-->
		                            <div class="row" >
		                                
		                            <!--/span 6-1 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 remove_div">
		                                        	<label class="control-label text-right">Foreign Experience<span class="text_requried">*</span></label>
		                                            <input type="text" id="foreign_experience" name="foreign_experience" value="{{ old('foreign_experience') }}" class="form-control " >	 
		                                        </div>
		                                    </div>
		                                </div>
									<!--/span 6-2 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 remove_div">
		                                       		<label class="control-label text-right">Donor Experience<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="donor_experience" value="{{ old('donor_experience') }}" class="form-control" >
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span 6-3 -->
		                                <div class="col-md-6 membership" id="membership_1">
		                                    <div class="form-group row">
		                                        <div class="col-md-6">
		                                        	<label class="control-label">Membership<span class="text_requried">*</span></label>

		                                        	<select  name="membership_name[]" id=membership_name class="form-control">
                                                        <option value=""></option>
                                                        
                                                        @foreach($memberships as $membership)
														
														<option value="{{$membership->id}}" {{(old("membership_name")==$membership->id? "selected" : "")}}>{{$membership->membership_name}}</option>

                                                        @endforeach
                                                      
                                                    </select>
		                                        </div>
		                                        <div class="col-md-4">
		                                        	<label class="control-label text-right">Number</label>
		                                            <input type="text" name="number[]" value="{{ old('number') }}" class="form-control" >
		                                             
                                            
		                                        </div>
		                                        <div class="col-md-2 ">
		                                        	<br>
		                                        	<div class="float-right">
		                                             <button type="button" name="add" id="add_mem" class="btn btn-success add" >+</button>
                                            		</div>
		                                        </div>
		                                    </div>
		                                </div>
		                               
		                            </div>
 						
 						<!--row 7-->
		                            <div class="row" >
		                                
		                                <!--/span 7-1 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 ">
		                                        	<label class="control-label">BARQAAB Employee<span class="text_requried">*</span></label>

		                                        	<select  name="barqaab_employment" class="form-control selectTwo" >

                                                        <option value=""></option>
                                                        <option value="1">Yes</option>
                                                        <option value="0">No</option>
                                                                                                              
                                                    </select>
		                                        
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 7-2 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 date_input">
		                                        	<label class="control-label text-right">CV Submision Date</label>
		                                        
		                                            <input type="text" name="cv_submission_date" value="{{ old('cv_submission_date') }}" class="form-control" readonly>
		                                             <br>
		                                           <i class="fas fa-trash-alt text_requried"></i> 
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span 7-3 --> 
		                                 <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Comments<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="comments" value="{{ old('comments') }}" class="form-control" >
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                            </div>
		                
   								<!--row 8-->
		                            <div class="row"  >
		                           		<!--/span 8-1 -->
										<div class="col-md-3 skill" id="skill_1">
		                                    <div class="form-group row">
		                                        <div class="col-md-9">
		                                        	<label class="control-label text-right">Other Skills<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name='skill[]' class="form-control" >

		                                        </div>
		                                        <div class="col-md-3">
		                                        <br>
			                                         <div class="float-right">
			                                        <button type="button" name="add" id="add_skill" class="btn btn-success add" >+</button>
													</div>
		                                        </div>
												
		                                    </div>
		                                </div>
		                              
		                            </div>

		                            <!--row 9-->
		                            <div class="row" >
		                           
										<!--/span 9-1 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Attached CV<span class="text_requried">*</span></label><br>
		                                       		<input type="file"  name="cv" value="{{ old('cv') }}"  class="form-control" >
		                                        </div>
		                                    </div>
		                                </div>
		                               
		                            </div>

		                   		<div id="test">
    <div id="tooltest0" class="tooltest0">
        <label>Tool Name :</label>
        <select class="toollist" name="FSR_tool_id[]" id="FSR_tool_id0" style="width: 350px" />
        <option></option>
        <option value="1">bla 1</option>
        </select>
    </div>
    <div id="tool-placeholder"></div>
    <div>
        <input type="button" value="Add another" />
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
$.validate();
</script>


<script>
	$(document).ready(function(){
	
	$('.toollist').select2({ //apply select2 to my element
    placeholder: "Search your Tool",
    allowClear: true
});


$('input[type=button]').click(function () {

    $('.toollist').select2("destroy");
    var noOfDivs = $('.tooltest0').length;
    var clonedDiv = $('.tooltest0').first().clone(true);
    clonedDiv.insertBefore("#tool-placeholder");
    clonedDiv.attr('id', 'tooltest' + noOfDivs);
    

    $('.toollist').select2({ //apply select2 to my element
        placeholder: "Search your Tool",
        allowClear: true
    });



});




		// $('select').select2({
	 //    minimumResultsForSearch: 20, // at least 20 results must be displayed
	 //    width: "100%",
	 //    theme: "classic"
		// });
	 //Make sure that the event fires on input change
		$("#cnic").on('input', function(ev){
			
			//Prevent default
			ev.preventDefault();
			
			//Remove hyphens
			let input = ev.target.value.split("-").join("");
			
			//Make a new string with the hyphens
			// Note that we make it into an array, and then join it at the end
			// This is so that we can use .map() 
			input = input.split('').map(function(cur, index){
				
				//If the size of input is 6 or 8, insert dash before it
				//else, just insert input
				if(index == 5 || index == 12)
					return "-" + cur;
				else
					return cur;
			}).join('');
			
			//Return the new string
			$(this).val(input);
		});
	//Dynamic add education
		
		// Add new element
		 $("#add").click(function(){
		 	
		  // Finding total number of elements added
		  var total_element = $(".education").length;
		 	
		  // last <div> with element class id
		  var lastid = $(".education:last").attr("id");
		  var split_id = lastid.split("_");
		  var nextindex = Number(split_id[1]) + 1;
		  var max = 5;
		  // Check total number elements
		  if(total_element < max ){
		   //Clone education div and copy 
		   //$('.education').find('select').select2('destroy');
		   	var clone = $(".education:last").clone();
		  	clone.prop('id','edu_'+nextindex).find('input:text').val('');
		   	clone.find("#add").html('X').prop("class", "btn btn-danger remove_edu");
		   	clone.insertAfter("div.education:last");
		   //$('#edu_'+nextindex).find(".select2-container").select2('destroy');
		 

		  }
		 
		});
		 // Remove element
		 $(document).on("click", '.remove_edu', function(){
		 $(this).closest(".education").remove();
 		}); 

		//Dynamic add specialization
		 // Add new element
		 $("#add_spe").click(function(){
		 	
		  // Finding total number of elements added
		  var total_element = $(".specialization").length;
		 	
		  // last <div> with element class id
		  var lastid = $(".specialization:last").attr("id");
		  var split_id = lastid.split("_");
		  var nextindex = Number(split_id[1]) + 1;
		  var max = 5;
		  // Check total number elements
		  if(total_element < max ){
		   //Clone specialization div and copy
		   	var $clone = $("#spe_1").clone();
		  	$clone.prop('id','spe_'+nextindex).find('input:text').val('');
		   	$clone.find("#add_spe").html('X').prop("class", "btn btn-danger remove_spe");
		   	$clone.insertAfter("div.specialization:last");
		  }
		 
		 });
		 // Remove element
		 $(document).on("click", '.remove_spe', function(){
		 $(this).closest(".specialization").remove();
		  
 		}); 


		 //Dynamic add Skill
		 // Add new element
		 $("#add_skill").click(function(){
		 	
		  // Finding total number of elements added
		  var total_element = $(".skill").length;
		 	
		  // last <div> with element class id
		  var lastid = $(".skill:last").attr("id");
		  var split_id = lastid.split("_");
		  var nextindex = Number(split_id[1]) + 1;
		  var max = 5;
		  // Check total number elements
		  if(total_element < max ){
		   //Clone specialization div and copy
		   	var $clone = $("#skill_1").clone();
		  	$clone.prop('id','skill_'+nextindex).find('input:text').val('');
		   	$clone.find("#add_skill").html('X').prop("class", "btn btn-danger remove_skill");
		   	$clone.insertAfter("div.skill:last");
		  }
		 
		 });
		 // Remove element
		 $(document).on("click", '.remove_skill', function(){
		 $(this).closest(".skill").remove();
		  
 		}); 

		 //Dynamic add membership
		 // Add new element
		 $("#add_mem").click(function(){
		 	
		  // Finding total number of elements added
		  var total_element = $(".membership").length;
		 	
		  // last <div> with element class id
		  var lastid = $(".membership:last").attr("id");
		  var split_id = lastid.split("_");
		  var nextindex = Number(split_id[1]) + 1;
		  var max = 5;
		  // Check total number elements
		  if(total_element < max ){
		   //Clone specialization div and copy
		   	var $clone = $("#membership_1").clone();
		  	$clone.prop('id','membership_'+nextindex).find('input:text').val('');
		   	$clone.find("#add_mem").html('X').prop("class", "btn btn-danger remove_membership");
		   	$clone.find('.remove_div').remove();
		   	$clone.insertAfter("div.membership:last");
		  }
		 
		 });
		 // Remove element
		 $(document).on("click", '.remove_membership', function(){
		 $(this).closest(".membership").remove();
		  
 		}); 

		  //Dynamic add phone
		 // Add new element
		 $("#add_phone").click(function(){
		 	
		  // Finding total number of elements added
		  var total_element = $(".phone").length;
		 	
		  // last <div> with element class id
		  var lastid = $(".phone:last").attr("id");
		  var split_id = lastid.split("_");
		  var nextindex = Number(split_id[1]) + 1;
		  var max = 5;
		  // Check total number elements
		  if(total_element < max ){
		   //Clone specialization div and copy
		   	var $clone = $("#phone_1").clone();
		  	$clone.prop('id','phone'+nextindex).find('input:text').val('');
		   	$clone.find("#add_phone").html('X').prop("class", "btn btn-danger remove_phone");
		   	$clone.find('.remove_phone_div').remove();
		   	$clone.insertAfter("div.phone:last");
		  }
		 
		 });
		 // Remove element
		 $(document).on("click", '.remove_phone', function(){
		 $(this).closest(".phone").remove();
		  
 		}); 


	});	

	
</script>

        

    @endpush

@stop