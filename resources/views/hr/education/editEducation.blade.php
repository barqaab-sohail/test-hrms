
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
						 
 

		                <div style="margin-top:10px; margin-right: 10px;">
		                    
		                    
		                </div>
		                 
 
 						
		                 

		                <div class="card-body">

		                  
		
	@if($educationIds->count()!=0)                    
	
	@include('hr.education.listEdu')	
	
	@endif
			                    
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

            	var marksObtain = parseInt($('#marks_obtain').val());
				var totalMarks = parseInt($('#total_marks').val());
				if(marksObtain>totalMarks){
					alert('Marks Obtain is Greater Than Total Marks');
					e.preventDefault();
				}
	    		
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
				var toMonth = $('<div id="to_mon">	</div>th').val();

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

				
			
			});


		    });

		    		
        </script>
    @endpush

@stop