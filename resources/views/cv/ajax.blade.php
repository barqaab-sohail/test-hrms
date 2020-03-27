
//submit function through ajax
    jQuery('#submit').click(function(e){
            
            e.preventDefault();
            // if(!$("form").valid()) return;
           
          $('.fa-spinner').show();
            //setTimeout(
        //  function(){  //time out function
   
                let FormInputs = $("#test").serializeArray();
                let formData = new FormData();

                //load attachment file into vriation
                let logo = $("#cv")[0].files[0];
                
                //append all input field into formData except file attachment
                jQuery.each(FormInputs, function (i, field) {
                        formData.append(field.name, field.value);
                 });

                //append attahcment variable into formData
                formData.append('cv', logo);
                for (var pair of formData.entries()) {
    console.log(pair[0]+ ', ' + pair[1]); 
}
               

                jQuery.ajaxSetup({
                  headers: {
                      'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                  }
                });
              
                jQuery.ajax({
                    url: "{{route('uploadCv.store')}}",
                    type: 'post',
                    processData: false,
                    contentType: false,
                    data: formData,
                   beforeSend: function() { 
                    
                     $("#submit").prop('disabled', true); // disable button
                     },

                    success: function(data){
                         $('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data Successfully Entered</strong></div>');
                         $('html,body').scrollTop(0);
                         $('#city, #state').each(function(){
                            $(this).html('');
                         });
                         $("input[type=text]").val("");
                         $("input[type=file]").val("");
                         $('.remove_edu, .remove_spe, .removeskill, .remove_membership, .remove_phone').each(function(){
                            $(this).click();
                         });
                          $('select').val('').trigger('chosen:updated');
                           $("#submit").prop('disabled', false);
                            $('.fa-spinner').hide();
                         


                    }, //end sucess
                    error: function (request, status, error) {
                        var test = request.responseJSON // this object have two more objects one is errors and other is message.
                        
                        var errorMassage = '';

                        //now saperate only errors object values from test object and store in variable errorMassage;
                        $.each(test.errors, function (key, value){
                          errorMassage += value + '<br>';
                        });
                         
                        $('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>'+errorMassage+'</strong></div>');
                        $('html,body').scrollTop(0);
                        $("#submit").prop('disabled', false);
                        $('.fa-spinner').hide();
                            
                    }//end error
                    
                    
                 }); //end ajax
            //}, 1000); //end timeout fuction
        });


// edituploadCV

//submit function through ajax
        jQuery('#submit').click(function(e){
            
            e.preventDefault();
            // if(!$("form").valid()) return;
           
          $('.fa-spinner').show();
            //setTimeout(
        //  function(){  //time out function
   
                let FormInputs = $("#test").serializeArray();
                let formData = new FormData();

                //load attachment file into vriation
                //let logo = $("#cv")[0].files[0];
                
                //append all input field into formData except file attachment
                jQuery.each(FormInputs, function (i, field) {
                        formData.append(field.name, field.value);
                 });
                formData.append('_method', 'PUT');
                for (var pair of formData.entries()) {
                console.log(pair[0]+ ', ' + pair[1]); 
                }
                //append attahcment variable into formData
                //formData.append('cv', logo);

                $.ajaxSetup({
                    headers: {
                     'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                //var url = "{{route('uploadCv.update',['uploadCv'=>$cvId->id])}}";
                $.ajax({
                    
                    url: "{{route('uploadCv.update',['uploadCv'=>$cvId->id])}}",
                    method: 'POST', //or POST
                    datatype: 'json',
                    processData: false,
                    contentType: false,
                    cache: false,
                    data: formData,
                   beforeSend: function() { 
                    
                     $("#submit").prop('disabled', true); // disable button
                     },

                    success: function(msg){
                          //var resObj = JSON.parse(data);
                    //console.log(url);

                         $('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data Successfully Updated</strong></div>');
                         $('html,body').scrollTop(0);
                         
                          
                           $("#submit").prop('disabled', false);
                            $('.fa-spinner').hide();
                         


                    }, //end sucess
                    error: function (request, status, error) {
                        var test = request.responseJSON // this object have two more objects one is errors and other is message.
                        
                        var errorMassage = '';

                        //now saperate only errors object values from test object and store in variable errorMassage;
                        $.each(test.errors, function (key, value){
                          errorMassage += value + '<br>';
                        });
                         
                        $('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>'+errorMassage+'</strong></div>');
                        $('html,body').scrollTop(0);
                        $("#submit").prop('disabled', false);
                        $('.fa-spinner').hide();
                            
                    }//end error
                    
                    
                 }); //end ajax
            //}, 1000); //end timeout fuction
        });



submitHandler: function(form) {
            console.log('after submithandler');
          $.ajax({
           url:"{{ route('uploadCv.store') }}",
           method:"POST",
           data:new FormData(this),
           //dataType:'JSON',
           contentType: false,
           cache: false,
           processData: false,
           success:function(data)
               {
                $('#json_message').html('<div id="json_message" class="alert alert-success" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Data Successfully Entered</strong></div>');
                $('html,body').scrollTop(0);
                $('.fa-spinner').hide();
                resetForm();
               },
            error: function (request, status, error) {
                        var test = request.responseJSON // this object have two more objects one is errors and other is message.
                        
                        var errorMassage = '';

                        //now saperate only errors object values from test object and store in variable errorMassage;
                        $.each(test.errors, function (key, value){
                          errorMassage += value + '<br>';
                        });
                         
                        $('#json_message').html('<div id="json_message" class="alert alert-danger" align="left"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>'+errorMassage+'</strong></div>');
                        $('html,body').scrollTop(0);
                        $('.fa-spinner').hide();
                        
                            
                    }//end error
          })
        }