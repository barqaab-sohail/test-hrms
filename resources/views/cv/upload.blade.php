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


        

    @endpush
