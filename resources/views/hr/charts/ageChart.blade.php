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

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      2],
          ['Commute',  2],
          ['Watch TV', 2],
          ['Sleep',    7]
        ]);

        var options = {
          title: 'Agewise Chart'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>

@endpush
