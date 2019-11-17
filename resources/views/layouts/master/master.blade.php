<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
@include('layouts.master.adminHead')

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

