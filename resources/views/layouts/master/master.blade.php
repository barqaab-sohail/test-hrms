<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('Massets/images/favicon.ico') }}">
    <title>@yield('title')</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="user_id" content="{{Auth::check() ? Auth::user()->id :''}}">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css" rel="stylesheet" />
    
    <!-- Bootstrap Core CSS -->
    <link href="{{asset('Massets/js/js-ui/jquery-ui.min.css') }}" rel="stylesheet">
    <link href="{{asset('Massets/plugins/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
   
    <!-- JS Validation  CSS -->
    <link href="{{asset('Massets/css/js-validation/js-validation.min.css')}}" rel="stylesheet" type="text/css" />

    <!-- chartist CSS -->
    <link href="{{asset('Massets/plugins/chartist-js/dist/chartist.min.css') }}" rel="stylesheet">
    <link href="{{asset('Massets/plugins/chartist-js/dist/chartist-init.css') }}" rel="stylesheet">
    <link href="{{asset('Massets/plugins/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css') }}" rel="stylesheet">
    <!--This page css - Morris CSS -->
    <link href="{{asset('Massets/plugins/c3-master/c3.min.css') }}" rel="stylesheet">
    <!-- Custom CSS -->

    <link href="{{asset('Massets/css/hrstyle.css') }}" rel="stylesheet">
     <link href="{{asset('Massets/select2/select2.min.css') }}" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="{{asset('Massets/css/colors/blue.css') }}" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="{{asset('Massets/css/toastr.min.css')}}">
    <link href="{{asset('Massets/plugins/footable/css/footable.bootstrap.min.css')}}" rel="stylesheet">

    <link href="{{asset('Massets/plugins/wizard/steps.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('Massets/plugins/datatables/media/css/dataTables.bootstrap4.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('Massets/plugins/html5-editor/bootstrap-wysihtml5.css')}}" />
    <link rel="stylesheet" href="{{asset('Massets/js/crop/croppie.css')}}" />
    <!-- start - This is for datatabe Fixed Columns only -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.1/css/buttons.dataTables.min.css" />
     <link rel="stylesheet" href="https://cdn.datatables.net/fixedcolumns/3.2.6/css/fixedColumns.bootstrap.min.css" />

     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.css" />

     <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
     
     
    <!-- end - This is for datatabe Fixed Columns only -->
   
</head>
<style>
thead th {
  font-weight: bold;
}
</style>

<body class="fix-header fix-sidebar card-no-border">
<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div class="preloader">
    <svg class="circular" viewBox ="25 25 50 50">
        <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"></circle> </svg>
</div>


<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper">

    @include('layouts.master.adminHeader')
    @include('layouts.master.adminNav')
    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="row page-titles" >
                <div class="col-md-12 col-8 align-self-center" >
                    <h3 class="text-themecolor"> @yield('h3')</h3>
                    @yield('Heading')

                </div>
            </div>

                @include('layouts.master.message') 
               

                @yield('content')
        </div>
    </div>
</div>
@include('layouts.master.adminScripts')
@yield('footer')
    <div style="text-align:center">
        <p>HRMS 2.0 - Developed by: BARQAAB IT</p>
    </div>
</body>
</html>

