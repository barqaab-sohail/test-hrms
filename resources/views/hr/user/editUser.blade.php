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
						@can('entry', Auth::user())
		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('employee.index')}}'" class="btn btn-info float-right">Back</button>
		                </div>
		                @endcan
		                <div class="card-body">

		                    <form action="{{route('editUser', ['id'=>$employee->id])}}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">User Detail</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="form-group row">
												<div class="col-md-12">
		                                        	<label class="control-label text-right">Email<span class="text_requried">*</span></label>
		                                            <input type="email"  name="email" value="{!! old('email',isset($employee->user->email)?$employee->user->email:'')!!}" class="form-control" placeholder="Enter Email" required>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-6">
		                                    <div class="form-group row">
		                                  @can('admin', Auth::user())
		                                        <div class="col-md-8">
		                                        	<label class="control-label text-right ">User Role</label>
		                                        
		                                            <select  name="role_id"  class="form-control selectTwo" >
                                                        <option value="{{5}}"></option>
                                                        @foreach($roles as $role)
															<option value="{{$role->id}}"
															@if(!empty($employee->user->role_id))
																@if($role->id == $employee->user->role_id) selected="selected" @endif
															@endif
															>{{$role->name}}</option>
														@endforeach
                                                                                                   
                                                    </select>
		                                        </div>
		                                   	@endcan
		                                    </div>
		                                    <input type="text"  name="employee_id" value="{{session('employee_id')}}
		                                            " class="form-control" hidden >
		                                    </div>
		                                </div>
		                            </div>

		                        </div>
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-6">
		                                    <div class="row">
		                                    	@can('entry', Auth::user())
		                                        <div class="col-md-offset-3 col-md-9">
		                                            <button type="submit" class="btn btn-success">Save</button>
		                                            <button type="button" onclick="window.location.href='{{route('employee.index')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                        @endcan
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