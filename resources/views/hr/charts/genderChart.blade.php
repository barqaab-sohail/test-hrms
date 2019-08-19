@extends('layouts.master.master')

@section('Heading')
	<h3 class="text-themecolor">Dashboard</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
		
		
	</ol>
@stop
@section('content')
	<div class="card">
		<div class="card-body">
		 <h2 class="box-title">Genderwise Charts</h2>
			<div id="container" style="width: 75%;">
   			 <canvas id="canvas"></canvas>
    		</div>
			
		</div>
	</div>


@stop

@push('scripts')
<script>

var chartdata = {
	    type: 'bar',
	    data: {
			    labels: <?php echo json_encode($gender); ?>,
			    // labels: month,
			    datasets: [
					    {
					    label: 'Genderwise Chart',
					    backgroundColor: ['rgba(255, 99, 132, 0.3)','rgba(255, 159, 64, 0.3)'],
					    borderWidth: 1,
					    data: <?php echo json_encode($data); ?>
					    }
				    ]
			    },
			    
	    options: {
		    
	        


	        scales: {
				    yAxes: [{
					    ticks: {
					    beginAtZero:true
					    }
				    }],
				    xAxes: [{
	           			barPercentage: 0.5,
			            barThickness: 60,
			            maxBarThickness: 80,
			            minBarLength: 2,
            			gridLines: {
                			offsetGridLines: true
           				}
       				}]
		    }
	    }
    }
    var ctx = document.getElementById('canvas').getContext('2d');
    new Chart(ctx, chartdata);

    

    </script>

 @endpush