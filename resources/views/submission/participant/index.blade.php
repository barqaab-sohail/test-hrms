@extends('layouts.master.master')
@section('title', 'Submission')
@section('Heading')
	<h3 class="text-themecolor">Submission Participant</h3>
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
					@include('layouts.submission.submissionVerticalButton')
					</div>
		        	<div class="col-lg-10">
						 


		                <div class="card-body">

		                    <form id="test" action="{{route('participant.create')}}" method="post" class="form-horizontal form-prevent-multiple-submits" enctype="multipart/form-data">
		                    @method('PATCH')
		                        {{csrf_field()}}
		                        <div class="form-body">
		                            <div class="row">
		                                <div class="col-md-6">
		                            	<h3 class="box-title">Submission Participant</h3>
		                            	</div>
		                            	<div class="col-md-3">
		                            	<h4>Total Marks: {{$submission->total_marks}}</h4>
		                            	</div>
		                            	<div class="col-md-3">
		                            	<h4>Evaluation Ratio: {{$submission->evaluation_ratio}}</h4>
		                            	</div>
		                            </div>
		                           
		                            <hr class="m-t-0 m-b-40">
		                            
		                            <div class="clone" id="clone_1">
		                            <!--row 1 -->
		                            <div class="row">
		                                <div class="col-md-12">
		                                 <!--/span 1-1 -->
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Name of Participant</label><br>
		                                       		<input type="text" name="participant_name" value="{{ old('participant_name.0') }}"  class="form-control participant_name"  >
		                                        </div>
		                                    </div>
		                                </div>
		                                  
		                            </div>
		                            
		                            
		                              <!--row 3-->
		                            <div class="row">
		                                <!--/span 3-1 -->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Technical Score</span></label>
		                                        
		                                            <input type="text"   name="technical_score[]"  value="{{ old('technical_score.0') }}" class="form-control technical_score">
													 
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span 3-2 -->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Financial Cost</label>
		                                       		<input type="text"  name="financial_cost[]" value="{{ old('financial_cost.0') }}"  class="form-control financial_cost">
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 3-2 -->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Financial Score</label>
		                                       		<input type="text" name="financial_score[]" value="{{ old('financial_score.0') }}"  class="form-control financial_score" readonly>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 3-3 -->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Overall Score</label>
		                                       		<input type="text" name="overall_score[]" value="{{ old('overall_score.0') }}"  class="form-control overall_score" readonly>
		                                        </div>
		                                    </div>
		                                </div>
		                                 <!--/span 3-4 -->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Ranking</label>
		                                       		<input type="text" name="ranking[]" value="{{ old('ranking.0') }}"  class="form-control ranking" readonly>
		                                        </div>
		                                    </div>
		                                </div>

		                                <div class="col-md-2">
		                                    
		                                			<div class="float-right">
		                                			<br>
			                                        <button type="button" name="add" id="add_participant" class="btn btn-success add" >Add</button>
													</div>
											
										</div>
		                                
		                            </div>

		                            </div>

		                        

		              <!-- row-10 -->
		                         <hr>
		                        <div class="form-actions">
		                            <div class="row">
		                                <div class="col-md-12">
		                                    <div class="row"> 
		                                       <div class="col-md-3">
		                                            <button type="submit" class="btn btn-success btn-prevent-multiple-submits">Upload</button>
		                                            
		                                        </div>

		                                        <div class="col-md-3">
		                                            <button type="button" name="calculate" id="calculate" class="btn btn-success calculate" >Calculate</button>
		                                            
		                                        </div>
		                                     
 

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
	
	$.validate();

	//Dynamic add education
		
		// Add new element
		 $("#add_participant").click(function(){
		 	
		  // Finding total number of elements added
		  var total_element = $(".clone").length;
		 	
		  // last <div> with element class id
		  var lastid = $(".clone:last").attr("id");
		  var split_id = lastid.split("_");
		  var nextindex = Number(split_id[1]) + 1;
		  var max = 5;

		  // Check total number elements
		  if(total_element < max ){
		   //Clone education div and copy 
			
		   	var clone = $("#clone_1").clone();
		  	clone.prop('id','clone_'+nextindex).find('input:text').val('');
		   	clone.find("#add_participant").html('Remove').prop("class", "btn btn-danger remove_clone");
		   	clone.insertAfter("div.clone:last");
		   
		  }
		 
		});
		 // Remove element
		 $(document).on("click", '.remove_clone', function(){
		 $(this).closest(".clone").remove();
 		}); 
	
	
		//Calculate Score

		 $("#calculate").click(function(){

		 			//calculate Lowest Financial Cost
				 	var financial_array =[];
				 	$(".clone").each(function(){
				 	var financial_cost = parseInt($(this).find(".financial_cost").val());
						financial_array.push(financial_cost);
					});
					var lowest = Math.min.apply(Math,financial_array);

			var overall_array =[];
		 	$(".clone").each(function(){
		 		var technical_score = parseInt($(this).find(".technical_score").val());
		 		var financial_cost = parseInt($(this).find(".financial_cost").val());
		 		var ratio = "{{$submission->evaluation_ratio}}"
		 		
		 		if(ratio == "80:20"){
		 			var financial_score = parseFloat((lowest/financial_cost*20).toFixed(3));	
		 			$(this).find(".financial_score").val(financial_score);
		 		}
		 	
		 		
		 		//Overall Score
		 		var overall_cost = $(this).find(".overall_score").val(financial_score+technical_score);
		 		

		 		var name= $(this).find(".participant_name").val();
		 		var overall = financial_score+technical_score;
		 	
		 		overall_array.push({
		 			overall: overall,
		 			name: name
		 		});
		 	});

		 	overall_array.sort(function(a,b) {return (a.overall < b.overall) ? 1 : ((b.overall < a.overall) ? -1 : 0);} );
		 
		 	$.each(overall_array, function (index, value){
		 		$(".clone").each(function(){
		 			if ( $(this).find(".participant_name").val() == value['name'] ){
		 				$(this).find(".ranking").val('Rank-'+index+1);
		 			}
		 		//alert(value['name']+": Rank" +value['overall']+":"+index);
		 		});
		 	})
		 	//Enter Raking
		 	
		 			// 	var i;
						// for (i = 0; i < overall_array.length; ++i) {
    		// 				if (name == overall_array[i]['name']){
    		// 					alert(name);
    		// 				}
						// }
		 
			

		 });
		
	
		
	
	
	});	
	
</script>

        

    @endpush

@stop