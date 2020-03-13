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
		                            	
		                            </div>
		                           
		                            <hr class="m-t-0 m-b-40">

		                            <div class="row">
		                            	<div class="col-md-4">
		                            	<h4>Name of Project: <input type="text"  name="project_name" data-validation="required" value="{{ old('project_name', $submission->project_name) }}"  class="form-control"  >
		                            	</h4>
		                            	
		                            	</div>
		                            	<div class="col-md-3 date_input">
		                            	<h4>Financial Opening Date: <input type="text"  name="submission_date" value="{{ old('submission_date') }}"  class="form-control" readonly>
		                                             <br>
		                                           <i class="fas fa-trash-alt text_requried"></i> 
		                            	</h4>
		                            	
		                            	</div>
		                            	<div class="col-md-2">
		                            	<h4>Total Marks: <select  name="total_marks"  class="form-control selectTwo">
		                                           	<option value=""></option>
		                                           	<option value="100" {{(old("evaluation_ratio",$submission->total_marks)=="100"? "selected" : "")}}>100</option>
		                                           	<option value="1000" {{(old("evaluation_ratio",$submission->total_marks)=="1000"? "selected" : "")}}>1000</option>
		                                       
		                                           	</select></h4>
		                            	</div>
		                            	<div class="col-md-3">
		                            	<h4>Evaluation Ratio: <select id="ratio" name="evaluation_ratio"  class="form-control selectTwo">
		                                           	<option value=""></option>
		                                           	<option value="80:20" {{(old("evaluation_ratio",$submission->evaluation_ratio)=="80:20"? "selected" : "")}}>80:20</option>
		                                           	<option value="90:10" {{(old("evaluation_ratio",$submission->evaluation_ratio)=="90:10"? "selected" : "")}}>90:10</option>
		                                           	<option value="70:30" {{(old("evaluation_ratio",$submission->evaluation_ratio)=="70:30"? "selected" : "")}}>70:30</option>
		                                           	<option value="Least Cost" {{(old("evaluation_ratio",$submission->evaluation_ratio	)=="Least Cost"? "selected" : "")}}>Least Cost</option>
		                                           	</select></h4>
		                            	</div>
		                            </div>
		                            <br>
		                            <hr class="m-t-0 m-b-40">

		                            <div class="clone" id="clone_1">
		                            <!--row 1 -->
		                            <div class="row">
		                                <div class="col-md-8">
		                                 <!--/span 1-1 -->
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                       		<label class="control-label text-right">Name of Participant</label><br>
		                                       		<input type="text" name="participant_name" data-validation="required" value="{{ old('participant_name.0') }}"  class="form-control participant_name"  >
		                                        </div>
		                                    </div>
		                                </div>
		                                <!--/span 3-1 -->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Technical Point</span></label>
		                                        
		                                            <input type="text"   data-validation="number" data-validation-optional="true" data-validation-allowing="range[1;{{$submission->total_marks}}],float"  data-validation-error-msg="value must be less than Total Marks" name="technical_point[]"  value="{{ old('technical_point.0') }}" class="form-control technical_point">
													 
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                                <!--/span 3-2 -->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Financial Cost</label>
		                                       		<input type="text" data-validation="number" data-validation-optional="true" data-validation-allowing="range[1;10000000000],float"  data-validation-error-msg="value must be Numeric"  name="financial_cost[]" value="{{ old('financial_cost.0') }}"  class="form-control financial_cost">
		                                        </div>
		                                    </div>
		                                </div>
		                                  
		                            </div>
		                            
		                            
		                              <!--row 3-->
		                            <div class="row">
		                                
		                                <!--/span 3-2 -->
		                                <div class="col-md-2">
		                                    <div class="form-group row">
		                                        <div class="col-md-12">
		                                        	<label class="control-label text-right">Technical Score</label>
		                                       		<input type="text" name="technical_score[]" value="{{ old('technical_score.0') }}"  class="form-control technical_score" readonly>
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

		                                <div class="col-md-4">
		                                    
		                                			<div class="float-right">
		                                			<br>
			                                        <button type="button" name="add" id="add_participant" class="btn btn-success add" >Add</button>
													</div>
											
										</div>
		                                
		                            </div>
		                             <hr class="m-t-0 m-b-40">
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

		 	//Check Calculation Required Inputs are Avaiable the Calulation is worked 
		 	$(".clone").each(function(){
		 		var check_name = $(this).find(".participant_name").val();
		 		var check_technical = $(this).find(".technical_point").val()
		 		var check_financial = $(this).find(".financial_cost").val()

		 		if ((check_name=='')||(check_technical=='') || (check_financial=='')){

		 				$(this).find ('.participant_name, .technical_point, .financial_cost').each(function(){
		 					$(this).addClass("error");
		 				});
  						
  						$(":input[type=text][readonly='readonly']").val("");
				}else{

					$(":input[type=text][readonly='readonly']").val("");

		 			//calculate Lowest Financial Cost
				 	var financial_array =[];
				 	$(".clone").each(function(){
				 	var financial_cost = parseInt($(this).find(".financial_cost").val());
						financial_array.push(financial_cost);
					});
					var lowest = Math.min.apply(Math,financial_array);
			
					//get last two digit of evaluation_ratio
					var financial_ratio = parseInt($('#ratio').val().slice(-2));

					//get last two digit of evaluation_ratio
					var technical_ratio = parseInt($('#ratio').val().substring(0, 2));

			
					//Technical and Financial Score Calculate
					var overall_array =[];
				 	$(".clone").each(function(){
				 		var technical_point = parseInt($(this).find(".technical_point").val());

				 		var financial_cost = parseInt($(this).find(".financial_cost").val());
				 		
				 		// testing if Evaluation Ratio is not "Least Base" than place Technical and Financial Score
				 		if($.isNumeric(financial_ratio)){
				 			var financial_score = parseFloat((lowest/financial_cost*financial_ratio).toFixed(3));	
				 			$(this).find(".financial_score").val(financial_score);
				 		
				 			var technical_score = parseFloat((technical_point*technical_ratio/100).toFixed(3));	
				 			$(this).find(".technical_score").val(technical_score);
				 		}
				 	
				 		
				 		//Overall Score - testing if Evaluation Ratio is not "Least Base" than place Overall Score
				 		if($.isNumeric(financial_ratio)){
				 		var overall_cost = $(this).find(".overall_score").val(financial_score+technical_score);
				 		}
				 		
				 		//Create array for further use of Ranking
				 		var name= $(this).find(".participant_name").val();
				 		var overall = financial_score+technical_score;
				 	
				 		overall_array.push({
				 			overall: overall,
				 			financil:financial_cost,
				 			name: name
				 		});
				 	});

				 	//Sorting Arrary if Evaluation Ratio is Not "Least Cost" than sorting descending otherwise ascending 
				 	if($.isNumeric(financial_ratio)){
				 	overall_array.sort(function(a,b) {return (a.overall < b.overall) ? 1 : ((b.overall < a.overall) ? -1 : 0);} );
				 	}else{
				 		overall_array.sort(function(a,b) {return (a.financil > b.financil) ? 1 : ((b.financil > a.financil) ? -1 : 0);} );
				 	}
		 
				 	$.each(overall_array, function (index, value){
				 		$(".clone").each(function(){
				 			if ( $(this).find(".participant_name").val() == value['name'] ){
				 				$(this).find(".ranking").val('Rank-'+(index+1));
				 			}
				 		//alert(value['name']+": Rank" +value['overall']+":"+index);
				 		});
				 	});

				} // end else

		 	}); //End Function Check Calculation Required Inputs are Avaiable for Calulation is worked 
		 
		}); // End Click Function
		
	
	});	
	
</script>

        

    @endpush

@stop