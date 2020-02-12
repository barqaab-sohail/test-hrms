<div id="test">
    <div id="tooltest0" class="tooltest0">
        <label>Tool Name :</label>
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

 @push('scripts')
	
<script src="{{asset('Massets/js/js/js.min.js')}}"></script>
<script src="{{asset('Massets/select2/select2.full.min.js')}}"></script>

<script>
	$(document).ready(function(){
	
	alert('test');
	$('.toollist').select2({ //apply select2 to my element
    placeholder: "Search your Tool",
    allowClear: true
});


$('input[type=button]').click(function () {

    $('.toollist').select2("destroy");
    var noOfDivs = $('.tooltest0').length;
    var clonedDiv = $('.tooltest0').first().clone(true);
    clonedDiv.insertBefore("#tool-placeholder");
    clonedDiv.attr('id', 'tooltest' + noOfDivs);
    

    $('.toollist').select2({ //apply select2 to my element
        placeholder: "Search your Tool",
        allowClear: true
    });



});





	});	

	
</script>

        

    @endpush
