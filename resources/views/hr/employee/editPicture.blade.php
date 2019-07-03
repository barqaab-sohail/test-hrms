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

		                    <form action="{{route('editPicture', ['id'=>session('employee_id')])}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        
		                        <div class="form-body">
		                            <center >
		                            
		                                <img  src="{{asset(isset($picture->name)? 'upload/pictures/'.$picture->name: 'Massets/images/default.png') }}" class="img-rounded picture-container picture-src"  id="wizardPicturePreview" title="" width="150" />
		                                <input type="file"  name="picture" id="wizard-picture" class="" required hidden>

		                                <h6 class="card-title m-t-10">Click On Image to Add Picture</h6>

		                                
		                            </center>
		                        </div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Update Picture</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
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
// Prepare the preview for profile picture
		        $("#wizard-picture").change(function(){
		        	var fileSize = this.files[0].size;
		        	var fileType = this.files[0].type;
		        	if (fileSize>512000)
		        	{
		        		alert('File Size is More Than 500kb');
		        		$(this).val('');
		        	}else{
		        		if ((fileType =='image/jpeg') || (fileType=='image/png')){
                    		readURL(this);
                    	}else{
                		alert('Only JPG and PNG Files Allowed');
		        		$(this).val('');
                		}
	    			}
                });
            });
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#wizardPicturePreview').attr('src', e.target.result).fadeIn('slow');
                    }
                    reader.readAsDataURL(input.files[0]);
                }           }
            $("#wizardPicturePreview").click (function() {
                $("input[id='wizard-picture']").click();
            });

           
           /*$(".form-control").keypress(function(e) {
           	
                if (e.which == 13) {
                    e.preventDefault();
                    return false;
                }
            });

            $('#asana_teams input[type="checkbox"]').each(function () {
                var $checkbox = $(this);
                $checkbox.checkbox();
            });*/
        </script>

        

    @endpush

@stop