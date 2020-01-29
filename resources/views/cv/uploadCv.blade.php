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
		                                        <div class="col-md-12 date_input">
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
		                                <div class="col-md-6">
		                                 <!--/span 2-1 -->
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
		                                 <!--/span 2-3 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Province<span class="text_requried">*</span></label>
		                                       		<input type="text"  name="province" value="{{ old('province') }}"  class="form-control">
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <!--row 3-->
		                            <div class="row" >
		                                <div class="col-md-3">
		                                	<!--/span 3-1 -->
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Country<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="country" value="{{ old('country') }}"  class="form-control" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 3-2 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 ">
		                                        	<label class="control-label">Mobile Number<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text"  name="phone" value="{{ old('phone') }}"  class="form-control" placeholder="Enter Mobile Number" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 3-3 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Email</label>
		                                        
		                                            <input type="email" name="email" value="{{ old('email') }}" class="form-control" placeholder="Enter Email Address " >
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span 3-4 -->
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
		                            </div>

		                             <!--row 4-->
		                            <div class="row education" id='div_1' >
		                                <div class="col-md-3">
		                                	<!--/span 4-1 -->
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Name of Degree<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="degree_name[]" data-validation="required" value="{{ old('degree_name') }}"  class="form-control" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 4-2 -->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <div class="col-md-12 ">
		                                        	<label class="control-label">Name of Institute<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="institute[]" value="{{ old('institute') }}"  class="form-control" placeholder="Enter Institute Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 4-3 -->
		                                <div class="col-md-3">
		                                    <div class="form-group row">
		                                        <div class="col-md-8">
		                                        	<label class="control-label text-right">Passing Year<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="passing_yea[]r" value="{{ old('passing_year') }}" class="form-control" >
		                                        </div>
												<div class="col-md-4">
		                                        <br>
			                                        <div>
			                                        <button type="button" name="add" id="add" class="btn btn-success add" >+</button>
													</div>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                            </div>
		                            
		                            <!--row -->
		                            <div class="row">
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Higher Degree<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="higher_degree" value="{{ old('higher_degree') }}"  class="form-control" placeholder="Enter Higher Degree Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-8">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Specialization<span class="text_requried">*</span></label>
		                                        	<br>	
		                                        	<select class="mdb-select md-form" multiple searchable="Search here.." name="expertize[]">
		                                        	@foreach($specializations as $specialization)
														<option value="{{$specialization->id}}">{{$specialization->name}}</option>
                                                    @endforeach
													
													</select>
		                                        </div>
		                                    </div>
		                                    
		                                </div>
		                            </div>

		                            <!--row-->
		                             <div class="row">
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Attached CV<span class="text_requried">*</span></label><br>
		                                       		<input type="file"  name="cv" value="{{ old('cv') }}"  class="form-control" >
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
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
	
		$('select').select2({
	    minimumResultsForSearch: 20, // at least 20 results must be displayed
	    width: "100%",
	    theme: "classic"
		});
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
		   // Adding new div container after last occurance of element class
		   //$(".element:last").after("<div class='row element' id='div_"+ nextindex +"'></div>");
		 
		   // Adding element to <div>
		   //$("#div_" + nextindex).append("");
		 
		   //$("#div_1").clone().insertAfter("div.element:last");
		   //$("#div_1").clone().insertAfter("div.element:last").$(this).find('.btn btn-success add').text('-');
		   	var $clone = $("#div_1").clone();
		  	$clone.prop('id','div_'+nextindex).find('input:text').val('');
		   	$clone.find("#add").html('-').prop("class", "btn btn-success remove");
		   	$clone.insertAfter("div.education:last");
		 
		  }
		 
		 });

		 // Remove element
		 $(document).on("click", '.remove', function(){
		 $(this).closest(".education").remove();
		  // var id = this.id;
		  // var split_id = id.split("_");
		  // var deleteindex = split_id[1];
		  // // Remove <div> with id
		  // $("#div_" + deleteindex).remove();

 		}); 

	});	

	
</script>

        

    @endpush

@stop