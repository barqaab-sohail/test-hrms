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

		                    <form action="{{route('editPicture', ['id'=>session('employee_id')])}}"  method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        
		                       <div class="form-group">
						            <input type='file' name="picture" id="imgInp" />
  									<img id="my-image" src="#" style="display: none;"/>
        						</div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button id="use" type="submit"  style="display: none;" class="btn btn-success">Update Picture</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		                   
		        		</div>    
						<div class="">
        					
        					 <input type='file' name="picture" id="result" hidden/>
        					
   						</div>

		        	</div>
		        </div>
            </div>
        </div>
    </div>
 @push('scripts')
        <script>
      function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      $('#my-image').attr('src', e.target.result);
      var resize = new Croppie($('#my-image')[0], {
        viewport: { width: 100, height: 100 },
        boundary: { width: 300, height: 300 },
        showZoomer: false,
        enableResize: true,
        enableOrientation: true
      });
      $('#use').fadeIn();
      $('#use').on('click', function() {
        resize.result('base64').then(function(dataImg) {
          var data = [{ image: dataImg }, { name: 'myimgage.jpg' }];
          // use ajax to send data to php
          $('#result').attr('src', dataImg);
        })
      })
    }
    reader.readAsDataURL(input.files[0]);
  }
}
 
$("#imgInp").change(function() {
  readURL(this);
});



          
        </script>

        

    @endpush

@stop