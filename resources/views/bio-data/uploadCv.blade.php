@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
@section('Heading')
	<h3 class="text-themecolor">Upload CV</h3>
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

		                    <form action="{{route('uploadCv.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Upload CV</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Full Name<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="full_name" value="{{ old('full_name') }}"  class="form-control" placeholder="Enter Full Name" >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-8">
		                                    <div class="form-group row">
		                                        <div class="col-md-4">
		                                        	<label class="control-label text-right">CNIC<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="cnic" id="cnic" pattern="[0-9.-]{15}" title= "13 digit Number without dash" value="{{ old('cnic') }}" class="form-control" onkeyup='addHyphen(this)'  placeholder="Enter CNIC without dash" >
		                                        </div>
		                                        
		                                        <div class="col-md-5 date_input">
		                                        	<label class="control-label text-right">Date of Birth<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" id="date_of_birth" name="date_of_birth" value="{{ old('date_of_birth') }}" class="form-control " placeholder="Enter Date of Birth" readonly>
													 
		                                            <br>
		                                           <i class="fas fa-trash-alt text_requried"></i> 
		                                             
		                                        </div>
		                                        <div class="col-md-3">
		                                        	<label class="control-label text-right">Gender<span class="text_requried">*</span></label>
		                                        	 <select  name="gender_id"  class="form-control selectTwo" >
                                                        <option value=""></option>
                                                        @foreach($genders as $gender)
														<option value="{{$gender->id}}" {{(old("gender_id")==$gender->id? "selected" : "")}}>{{$gender->name}}</option>
                                                        @endforeach
                                                        
                                                    </select>
		                                        
		                                            
		                                        </div>

		                                    </div>
		                                    
		                                </div>
		                               
		                            </div>
		                            <!--/row-->
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
		                                        	<label class="control-label text-right">Expertize<span class="text_requried">*</span></label>
		                                        	<br>	
		                                        	<select class="mdb-select md-form" multiple searchable="Search here.." name="expertize[]">
		                                        	@foreach($expertizes as $expertize)
														<option value="{{$expertize->id}}">{{$expertize->name}}</option>
                                                    @endforeach
													
													</select>
		                                        
		                                            
		                                        </div>
		                                        
		                                        
		                                       

		                                    </div>
		                                    
		                                </div>
		                               
		                            </div>
		                            <!--/row-->
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

<script src="{{asset('Massets/js/floating-placeholder/placeholder.label.min.js') }}"></script>


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



	});

	
</script>

        

    @endpush

@stop