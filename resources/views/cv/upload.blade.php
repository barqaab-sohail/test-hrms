<html>  
<head>
<link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css" rel="stylesheet" />
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.js"></script>
</head>
<body>

<div id="test">
    <div id="tooltest0" class="tooltest0">
        <label class="testing">Tool Name :</label>
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


</body>

<script>
    
// $('.toollist').select2({ //apply select2 to my element
//     placeholder: "Search your Tool",
//     allowClear: true
// });
$('.toollist').chosen({no_results_text: "Oops, nothing found!"}); 

$('input[type=button]').click(function () {

    $('.toollist').chosen("destroy");
    var noOfDivs = $('.tooltest0').length;
    var clonedDiv = $('.tooltest0').first().clone();
    clonedDiv.insertBefore("#tool-placeholder");
    clonedDiv.attr('id', 'tooltest' + noOfDivs);
    $('.toollist').chosen({no_results_text: "Oops, nothing found!"}); 
    
    // $('.toollist:first').select2({ //apply select2 to my element

    //     placeholder: "Search your Tool",
    //     allowClear: true
    // });
    
   


});

</script>

</html>



