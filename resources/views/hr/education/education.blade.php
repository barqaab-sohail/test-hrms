
@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
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
						 

		        		@can('hr_edit_record')
		        		<div class="container-fluid">
		        		<div class="row">
		        		
		        			<div class="col-md-4">
				                <div style="margin-top:10px; margin-right: 10px;">
				                    <button type="button"  id ="EduButton"  class="btn btn-info float-right">Add Education</button>
				                    
				                </div>
				            </div>
				            <div class="col-md-4">
				                <div style="margin-top:10px; margin-right: 10px;">
				                    <button type="button"  id ="TraButton"  class="btn btn-info float-right">Add Training</button>
				                    
				                </div>
				            </div>
				            <div class="col-md-4">
				                <div style="margin-top:10px; margin-right: 10px;">
				                    <button type="button"  id ="PubButton"  class="btn btn-info float-right">Add Publication</button>
				                    
				                </div>
				            </div>
				           </div>
		                </div>
		                @endcan

		                <div class="card-body editDiv">
		                @if(request()->is('*education/*/edit')) 


		               		@include('hr.education.edit.editEduForm')

		                @elseif(request()->is('*training/*/edit')) 


		                	@include('hr.education.edit.editTraForm')

		                @elseif(request()->is('*publication/*/edit')) 

		                	@include('hr.education.edit.editPubForm')

		                @endif"
		                </div>




 						<div class="card-body hide" id="hideDivEduButton">

		                @include('hr.education.eduForm')
		                   
		                </div>  

		                <div class="card-body hide" id="hideDivTraButton">
 							  @include('hr.education.traForm')

 						</div>


		                <div class="card-body hide" id="hideDivPubButton">
		                	  @include('hr.education.pubForm')

 						</div>


 						

						<div class="row">
							<div class="col-md-12">
								<div class="container-fluid">
								@if($educationIds->count()!=0)		                    
								@include('hr.education.listEdu')
								@endif
								</div>
							</div>
							<div class="col-md-12">
								<div class="container-fluid">
								@if($trainingIds->count()!=0)		                    
								@include('hr.education.listTra')
								@endif
								</div>
							</div>
							<div class="col-md-12">
								<div class="container-fluid">
								@if($publicationIds->count()!=0)		                    
								@include('hr.education.listPub')
								@endif
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
            $(document).ready(function() {

            	$('#education').submit(function(e) {
	    		
	    		var months = [
    			'','January', 'February', 'March', 'April', 'May',
    			'June', 'July', 'August', 'September',
    			'October', 'November', 'December' ];

    			function monthNameToNum(monthname) {
 				var month = months.indexOf(monthname);
    			return month ? month + 1 : 0;
				}
				
				var fromYear = $('#from_year').val();
				var toYear = $('#to_year').val();
				var fromMonth = $('#from_month').val();
				var toMonth = $('#to_month').val();

				if (fromYear>toYear)
				{
					alert('From Year is Greater Than To');
					e.preventDefault();
				} else if (fromYear==toYear){
					

					var monthValue = monthNameToNum(toMonth)-monthNameToNum(fromMonth);
					
					if(monthValue<0){
						alert('From Month is Greater Than To');
						e.preventDefault();
					}
					
				}

				var marksObtain = parseInt($('#marks_obtain').val());
				var totalMarks = parseInt($('#total_marks').val());
				if(marksObtain>totalMarks){
					alert('Marks Obtain is Greater Than Total Marks');
					e.preventDefault();
				}
			
			});


		    });

		   
        </script>
    @endpush

@stop