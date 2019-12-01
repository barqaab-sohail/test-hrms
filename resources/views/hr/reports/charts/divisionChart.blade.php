@extends('layouts.master.master')
@section('title', 'BARQAAB HR')
 @push('scripts')
      
    @endpush


@section('Heading')
	<h3 class="text-themecolor">Charts</h3>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0)">Division Chart</a></li>
		
		
	</ol>
@stop
@section('content')
	<div class="card">
		<div class="card-body">
				<button type="button" onclick="window.location.href='{{route('hr.charts')}}'" class="btn btn-info float-right">Back to List</button>
		 
		 <h2 class="box-title">Departmentwise Charts</h2>

			<div id="app">
            {!! $chart->container() !!}
        </div>
        <script src="https://unpkg.com/vue"></script>
        <script>
            var app = new Vue({
              
                el: '#app',
            });
        </script>
        
         {!! $chart->script() !!}
		
			
		</div>
	</div>

@stop