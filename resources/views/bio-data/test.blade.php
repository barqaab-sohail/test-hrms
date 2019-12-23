<!DOCTYPE html>
<html>
<head>
	<title></title>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.10.1/css/mdb.min.css" rel="stylesheet">
</head>
<body>
	<h3 class="text-themecolor">Upload CV</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)"></a></li>
	</ol>


    <div class="row">
        <div class="col-lg-12">

            <div class="card card-outline-info">
			
				<div class="row">
					
		        	<div class="col-lg-12">
						 
		                <div class="card-body">

		                    <form action="{{route('employee.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Upload CV</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-4">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Full Name<span class="text_requried">*</span></label><br>
		                                       		<input type="text"  name="full_name" value="{{ old('full_name') }}"  class="form-control" placeholder="Enter Full Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-8">
		                                    <div class="form-group row">
		                                        <div class="col-md-4">
		                                        	<label class="control-label text-right">CNIC<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" name="cnic" id="cnic" pattern="[0-9.-]{15}" title= "13 digit Number without dash" value="{{ old('cnic') }}" class="form-control" onkeyup='addHyphen(this)'  placeholder="Enter CNIC without dash" required>
		                                        </div>
		                                        
		                                        <div class="col-md-5 date_input">
		                                        	<label class="control-label text-right">Date of Birth<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" id="date_of_birth" name="date_of_birth" value="{{ old('date_of_birth') }}" class="form-control " placeholder="Enter Date of Birth" required readonly>
													 
		                                            <br>
		                                           <i class="fas fa-trash-alt text_requried"></i> 
		                                             
		                                        </div>
		                                        <div class="col-md-3">
		                                        	<label class="control-label text-right">Gender<span class="text_requried">*</span></label>
		                                        	 <select  name="gender_id"  class="form-control selectTwo" required>
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
		                                       		<input type="text"  name="full_name" value="{{ old('full_name') }}"  class="form-control" placeholder="Enter Full Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-8">
		                                    <div class="form-group row">
		                                        <div class="col-md-4">
		                                        	<label class="control-label text-right">Expertize<span class="text_requried">*</span></label>
		                                        	
		                                        	<select class="mdb-select colorful-select dropdown-primary md-form" multiple searchable="Search here..">
												      <option value="" disabled selected>Choose your country</option>
												      <option value="1">USA</option>
												      <option value="2">Germany</option>
												      <option value="3">France</option>
												      <option value="4">Poland</option>
												      <option value="5">Japan</option>
												    </select>

		                                            
		                                        </div>
		                                        
		                                        <div class="col-md-5 date_input">
		                                        	<label class="control-label text-right">Date of Birth<span class="text_requried">*</span></label>
		                                        
		                                            <input type="text" id="date_of_birth" name="date_of_birth" value="{{ old('date_of_birth') }}" class="form-control " placeholder="Enter Date of Birth" required readonly>
													 
		                                            <br>
		                                           <i class="fas fa-trash-alt text_requried"></i> 
		                                             
		                                        </div>
		                                        <div class="col-md-3">
		                                        	<label class="control-label text-right">Gender<span class="text_requried">*</span></label>
		                                        	 <select  name="gender_id"  class="form-control selectTwo" required>
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
		                                       		<label class="control-label text-right">Attached CV<span class="text_requried">*</span></label><br>
		                                       		<input type="file"  name="full_name" value="{{ old('full_name') }}"  class="form-control" placeholder="Enter Full Name" required>
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

</body>

</html>

<script src="{{asset('Massets/js/floating-placeholder/placeholder.label.min.js') }}"></script>
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.10.1/js/mdb.min.js"></script>

<script>


$(document).ready(function(){
	
$('.mdb-select').materialSelect();



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