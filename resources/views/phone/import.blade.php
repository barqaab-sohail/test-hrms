<div class="container" id="hideDiv">
   					<h3 align="center">Import Excel File</h3>

				   	<form method="post" enctype="multipart/form-data" action="{{route('importPhone')}}">
				    {{ csrf_field() }}
				    <div class="form-group">
				     <table class="table">
					      <tr>
					       	<td width="40%" align="right"><label>Select File for Upload</label></td>
					       	<td width="30">
					        <input type="file" name="select_file" />
					        <br><span class="text-muted">.xls, .xslx Files Only</span>
					       </td>
					       	<td width="30%" align="left">
					        <input type="submit" name="upload" class="btn btn-info" value="Upload">
							</td>
					      </tr>
				     </table>
				    </div>
				   </form>
<hr>
</div>