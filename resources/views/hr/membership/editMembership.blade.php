
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
						@can('entry', Auth::user())
		                <div style="margin-top:10px; margin-right: 10px;">
		                    <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-info float-right">Back</button>
		                    
		                </div>
		                @endcan
		                <div class="card-body">

		                    <form action="{!!route('membership.update', ['id'=>optional($data)->id])!!}" method="post" class="form-horizontal" enctype="multipart/form-data">
		                    @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            
		                            <h3 class="box-title">Membership</h3>
		                            <hr class="m-t-0 m-b-40">
		                            <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right ">Name<span class="text_requried">*</span></label>
		                                        
		                                           <select  id="name" name="name"  class="form-control selectTwo" required>
                                                        
                                                        <option value="{{$data->name}}">{{$data->name}}</option> 
		                                             	<option value="PEC" @if($data->name == 'PEC') selected="selected" @endif>PEC</option>
		                                             	<option value"Other">Other</option>
                                                                                                                                                     
                                                    </select>



		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span-->
		                                <div class="col-md-5">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Membership No.</label>
		                                        
		                                            <input type="text" name="membership_no" value="{!! old('membership_no', optional($data)->membership_no) !!}" class="form-control " placeholder="Enter Membership No" >
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                                
		                            <!--/row-->
		                             <div class="row">
		                                <div class="col-md-7">
		                                    <div class="form-group row">
		                                        <div class="col-md-7 date_input">
		                                        	<label class="control-label text-right ">Expiry Date</label>
		                                        
		                                            <input type="text"  readonly id="expiry_date" name="expiry_date" value="{!! old('expiry_date', optional($data)->expiry_date) !!}" class="form-control"  />
													@can('entry', Auth::user())
		                                            <br>
		                                            <i  class="fas fa-trash-alt text_requried"></i>
		                                            @endcan
		                                        </div>
		                                       
		                                      
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
		                                            <button type="submit" class="btn btn-success">Edit Membership</button>
		                                            <button type="button" onclick="window.location.href='{{route('employeeList')}}'" class="btn btn-inverse">Cancel</button>
		                                        </div>
		                                        @endcan
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
	@if($membershipIds->count()!=0)		                    
	@include('hr.membership.list')
		
	
	@endif
			                    
		        		</div>       
		        	</div>
		        </div>
            </div>
        </div>
    </div>
 @push('scripts')
        <script>
            $(document).ready(function(){

            	$("#name").change(function (){
				var other = $('#name').val();
					if (other != 'PEC'){
					var name=prompt("Enter Membership Name");
					var select = $('#name');
					select.empty().append(new Option(name, name, true, true),new Option('PEC', 'PEC'));
						
					}
				});

				$("#membership").submit(function(e) {
				var name = $('#name').val();

				if (name=='null'){
					alert('null Value is not accepted');
					e.preventDefault();
				}

				});
			

			
			});
        </script>
    @endpush

@stop