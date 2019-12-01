@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
 


@section('Heading')
	<h3 class="text-themecolor">Charts</h3>
  
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)">Category Chart</a></li>
		
	</ol>
@stop
@section('content')
	<div class="card">
		<div class="card-body">
		            <button type="button" onclick="window.location.href='{{route('hr.charts')}}'" class="btn btn-info float-right">Back to List</button>
                <br>
                <br>
        <div class="row">
            <div class="col-md-6">
    		    <div id="piechart" style="width: 700px; height: 500px;"></div>
            </div>
             <div class="col-md-6">
            <div id="piechart1" style="width: 700px; height: 500px;"></div>
            </div>
        </div>
   
        			
		</div>
	</div>

@stop
@push('scripts')
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var categoryA = {{$categoryA}};
        var categoryB = {{$categoryB}};
        var categoryC = {{$categoryC}};
        

        var data = google.visualization.arrayToDataTable([
          ['Description', 'Quantity'],
          ['Category A Employees',     categoryA],
          ['Category B Employees',      categoryB],
          ['Category C Employees',      categoryC]
          
        ]);

        var data1 = google.visualization.arrayToDataTable([
          ['Description', '', { role: 'style' }, { role: 'annotation' }],
          ['Category A',     categoryA, '#e94922', categoryA],
          ['Category B',      categoryB, '#4f328a', categoryB],
          ['Category C',      categoryC, '#00a49f', categoryC]
          
        ]);

        colorsHex = [
        
    '#e94922',
    '#4f328a',
    '#00a49f'
  ];
  
        var options = {
          title: 'Categorywise Chart',
          colors: colorsHex,
          is3D: true,
          pieSliceText: 'value'
        };

        var options1 = {
          title: 'Categorywise Chart',
          colors: colorsHex,
           legend: { position: 'top', maxLines: 3 },
           isStacked: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        var chart1 = new google.visualization.ColumnChart(document.getElementById('piechart1'));

        chart.draw(data, options);
        chart1.draw(data1, options1);
      }
    </script>

@endpush
