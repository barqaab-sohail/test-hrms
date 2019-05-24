@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Human Resource</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)">New Employee</a></li>
		
		
	</ol>
@stop
@section('content')


    <div class="row">
        <div class="col-lg-12">

            <div class="card card-outline-info">
			
				<div class="row">
					<div class="col-lg-2">
					@include('layouts.master.hrVerticalButton')
					</div>
        	
		        	<div class="col-lg-10">

		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('userList')}}'" class="btn btn-info float-right">Back</button>
		                </div>
		                <div class="card-body">

		                    <form action="{{route('storeUser')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            <center >
		                                <input type="image"  src="{{asset('Massets/images/default.png')}}" class="img-circle picture-container picture-src"  id="wizardPicturePreview" title="" width="150" />
		                                <input type="file"  name="picture" id="wizard-picture" class="" required hidden>

		                                <h6 class="card-title m-t-10">Click On Image to Add Picture</h6>

		                                
		                            </center>
		                            <h3 class="box-title">Employee Information</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">First Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="first_name" value="{{ old('first_name') }}"  class="form-control" placeholder="Enter First Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Middle Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="middle_name" value="{{ old('middle_name') }}" class="form-control " placeholder="Enter Middle Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Last Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="last_name" value="{{ old('last_name') }}"   class="form-control " placeholder="Enter Last Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Email</label>
		                                        <div class="col-md-9">
		                                            <input type="email" name="email" value="{{ old('email') }}" class="form-control " placeholder="Enter Email" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                            </div>
		                            <!--/row-->
		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">CNIC</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="cnic" value="{{ old('cnic') }}" class="form-control " placeholder="Enter CNIC" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">CNIC Expiry</label>
		                                        <div class="col-md-9">
		                                            <div class="col-md-9">
		                                            <input type="date" name="cnic_expiry" value="{{ old('cnic_expiry') }}" class="form-control " required>
		                                        </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                
		                            </div>
		                            <!--/row-->
		                           
		                        </div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Add Employee</button>
		                                            <button type="button" onclick="window.location.href='{{route('userList')}}'" class="btn btn-inverse">Cancel</button>
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
                    readURL(this);
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
            $("input[type='image']").click (function() {
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