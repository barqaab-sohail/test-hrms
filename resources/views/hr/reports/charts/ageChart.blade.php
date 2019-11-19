@extends('layouts.master.master')
 


@section('Heading')
	<h3 class="text-themecolor">Charts</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)">Age Chart</a></li>
		
		
	</ol>
@stop
@section('content')
	<div class="card">
		<div class="card-body">
		            <button type="button" onclick="window.location.href='{{route('hr.charts')}}'" class="btn btn-info float-right">Back to List</button>
		<div id="piechart" style="width: 900px; height: 500px;"></div>
        			
		</div>
	</div>

@stop
@push('scripts')
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var aboveSixty = {{$countAboveSixty}};
        var belowSixty = {{$countBelowSixty}};
        

        var data = google.visualization.arrayToDataTable([
          ['Description', 'Quantity'],
          ['Above Sixty',     aboveSixty],
          ['Below sixty',      belowSixty]
          
        ]);

        colorsHex = [
        
    '#1e8449',
    '#007fff'
  ];
  colorsRgba = [
   
    'rgba(30,132,73,0.3)',
    'rgba(0,127,255,0.3)'
  ];

        var options = {
          title: 'Agewise Chart',
          colors: colorsHex,
          is3D: true,
          pieSliceText: 'value'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>

@endpush
