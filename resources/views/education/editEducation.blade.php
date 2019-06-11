@extends('layouts.master.master')
@section('Heading')
	<h3 class="text-themecolor">Human Resource</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)">Education</a></li>
		
		
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
		                    <button type="button" onclick="window.location.href='{{route('userList')}}'" class="btn btn-info float-right">Back</button>
		                    
		                </div>
		                <div class="card-body">

		                    <form action="{!!route('editEducation', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Education</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Degree Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text"  name="degree_name" value="{!! old('degree_name', optional($data)->degree_name) !!}
		                                            " class="form-control" placeholder="Enter Degree Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Institute Name</label>
		                                        <div class="col-md-9">
		                                            <input type="text" name="institute" value="{!! old('institute', optional($data)->institute) !!}" class="form-control " placeholder="Enter Institute Name" required>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                            <div class="row">
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                        <label class="control-label text-right col-md-3">Marks Obtain</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="marks_obtain" value="{!! old('marks_obtain', optional($data)->marks_obtain) !!}"   class="form-control " required>
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Total Marks</label>
		                                        <div class="col-md-3">
		                                            <input type="text" name="total_marks" value="{!! old('total_marks', optional($data)->total_marks) !!}"   class="form-control " required>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                         <label class="control-label text-right col-md-3">Level of Degree</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="level" value="{!! old('level', optional($data)->level) !!}"   class="form-control "  required>
		                                        </div>
		                                         <label class="control-label text-right col-md-3">Passing Year</label>
		                                        <div class="col-md-3">
		                                            <input type="number" name="completion" value="{!! old('completion', optional($data)->completion) !!}"   class="form-control " required>

		                                            
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
		                                            <button type="submit" class="btn btn-success">Update Education</button>
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
            $("input[type='image']").click(function() {
                $("input[id='wizard-picture']").click();
            });
            $(".form-control").keypress(function(e) {
                if (e.which == 13) {
                    e.preventDefault();
                    return false;
                }
            });

            $('#asana_teams input[type="checkbox"]').each(function () {
                var $checkbox = $(this);
                $checkbox.checkbox();
            });
        </script>
    @endpush

@stop