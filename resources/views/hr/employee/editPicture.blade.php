@extends('layouts.master.master')
@section('Heading')
	@include('hr.hrHeading')
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
		                    <button type="button" onclick="window.location.href='{{route('employee.index')}}'" class="btn btn-info float-right">Back</button>
		                </div>
                         
 

		       				<p>&nbsp;</p>
<div  class="container"> 
        
    
    <div class="d-flex justify-content-center p-3">
        <div class="card text-center">
         <div class="alert alert-danger" style="display:none"></div>
            <div class="card-body">
                <h5 class="card-title">Current Picture </h5>
                 <span id="success" class="text-success"></span>
                 <span id="wanings" class="text-danger"></span>

                <div class="profile-img p-3">
                    <img src="{{asset(isset($picture->name)? 'storage/pictures/'.$picture->name: 'Massets/images/default.png') }}" width=200 id="profile-pic">
                </div>
                  
 

                <div id="preview-img" class="btn btn-dark">

                    <input type="file" class="file-upload" id="file-upload" 
                    name="profile_picture" accept="image/*">
                    
                </div>
                 
 

                <div id="back">
                 <a type="submit" role="button"  href="{{route('picture.edit', session('employee_id'))}}" class="btn btn-info">Edit</a>
                </div>

            </div>
        </div>
    </div>

    <!-- The Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Crop And Upload Image</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <div id="resizer"></div>
                    <button class="btn rotate float-lef" data-deg="90" > 
                    <i class="fas fa-undo"></i></button>
                    <button class="btn rotate float-right" data-deg="-90" > 
                    <i class="fas fa-redo"></i></button>
                    <hr>
                    <button class="btn btn-block btn-dark" id="upload" > 
                    Crop And Upload</button>
                </div>
            </div>
        </div>
    </div>
    
    


</div>   
						

		        	</div>
		        </div>
            </div>
        </div>
    </div>
@push('scripts')
<script>
 $("#back").hide();

$(function() {
    var croppie = null;
    var el = document.getElementById('resizer');

    $.base64ImageToBlob = function(str) {
        // extract content type and base64 payload from original string
        var pos = str.indexOf(';base64,');
        var type = str.substring(5, pos);
        var b64 = str.substr(pos + 8);
      
        // decode base64
        var imageContent = atob(b64);
      
        // create an ArrayBuffer and a view (as unsigned 8-bit)
        var buffer = new ArrayBuffer(imageContent.length);
        var view = new Uint8Array(buffer);
      
        // fill the view, using the decoded base64
        for (var n = 0; n < imageContent.length; n++) {
          view[n] = imageContent.charCodeAt(n);
        }
      
        // convert ArrayBuffer to Blob
        var blob = new Blob([buffer], { type: type });
      
        return blob;
    }

    $.getImage = function(input, croppie) {
        
        if (input.files && input.files[0])  {
            var reader = new FileReader();
            reader.onload = function(e) {  
                croppie.bind({
                    url: e.target.result,
                });
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#file-upload").on("change", function(event) {
        var filetype = this.files[0].type;
        if ((filetype=='image/jpeg')||(filetype=='image/png')){
        
              $("#myModal").modal();
           
            // Initailize croppie instance and assign it to global variable
            croppie = new Croppie(el, {
                    viewport: {
                        width: 300,
                        height: 300,
                        type: 'canvas'
                    },
                    boundary: {
                        width: 350,
                        height: 350
                    },
                    enableOrientation: true
                });
            $.getImage(event.target, croppie); 
        }else{
            alert('Only JPG and PNG allowed');
        }
    });

    $("#upload").on("click", function() {
        croppie.result('base64').then(function(base64) {
            $("#myModal").modal("hide"); 
            $("#profile-pic").attr("src","/images/ajax-loader.gif");

            var url = "{{route('editPicture', ['id'=>session('employee_id')])}}";
            var formData = new FormData();
            formData.append("profile_picture", $.base64ImageToBlob(base64));

            // This step is only needed if you are using Laravel
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                type: 'POST',
                url: url,
                data: formData,
                processData: false,
                contentType: false,
                success: function(data) {
                    if (data == "Uploaded Sucessfully") {
                        $("#profile-pic").attr("src", base64); 
                        $("#preview-img").hide();
                        $("#back").show();
                            $('#success').fadeIn().html(data);
                            setTimeout(function() {
                             $('#success').fadeOut('slow');
                            }, 3000);
                    } else {
                        $("#profile-pic").attr("src","{{asset(isset($picture->name)? 'storage/pictures/'.$picture->name: 'Massets/images/default.png') }}" );
                       
                       jQuery.each(data.errors, function(key, value){
                            jQuery('.alert-danger').show();
                            jQuery('.alert-danger').append('<p>'+value+'</p>');
                        });

                        console.log(data['profile_picture']);
                    }
                },
                error: function(error) {
                    console.log(error);
                    $("#profile-pic").attr("src","{{asset(isset($picture->name)? 'storage/pictures/'.$picture->name: 'Massets/images/default.png') }}" ); 
                }
            });
        });
    });

    // To Rotate Image Left or Right
    $(".rotate").on("click", function() {
        croppie.rotate(parseInt($(this).data('deg'))); 
    });

    $('#myModal').on('hidden.bs.modal', function (e) {
        // This function will call immediately after model close
        // To ensure that old croppie instance is destroyed on every model close
        setTimeout(function() { croppie.destroy(); }, 100);
    })

});

</script>

@endpush

@stop