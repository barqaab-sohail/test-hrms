<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>BARQAAB HRM</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        
 @include('layouts.link')
</head>

<body>
    <!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
 

@include('layouts.leftSideBar')

    <!-- Start Welcome area -->
    <div class="all-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <!--<div class="logo-pro">
                       
                        <a href="index.html"><img class="main-logo" src="assets/img/logo/logo.png" alt="" /></a>

                    </div> -->
                    <br>
                </div>
            </div>
        </div>
        <div class="header-advance-area">
            <div class="header-top-area" style="background-color: #006DF0;">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="header-top-wraper" >
                                <div class="row">
                                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                        <div class="menu-switcher-pro" >
                                            <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
													<span style="font-size: 1.3em; color: white;">
                                                    <i class="fas fa-align-justify"></i>
												</button>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                      <!--  <div class="header-top-menu tabl-d-n">
                                            <ul class="nav navbar-nav mai-top-nav">
                                                <li class="nav-item"><a href="#" class="nav-link">Home</a>
                                                </li>
                                                <li class="nav-item"><a href="#" class="nav-link">About</a>
                                                </li>
                                                <li class="nav-item"><a href="#" class="nav-link">Services</a>
                                                </li>
                                                <li class="nav-item dropdown res-dis-nn">
                                                    <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">Project <span class="angle-down-topmenu"><i class="fa fa-angle-down"></i></span></a>
                                                    <div role="menu" class="dropdown-menu animated zoomIn">
                                                        <a href="#" class="dropdown-item">Documentation</a>
                                                        <a href="#" class="dropdown-item">Expert Backend</a>
                                                        <a href="#" class="dropdown-item">Expert FrontEnd</a>
                                                        <a href="#" class="dropdown-item">Contact Support</a>
                                                    </div>
                                                </li>
                                                <li class="nav-item"><a href="#" class="nav-link">Support</a>
                                                </li>
                                            </ul>
                                        </div> -->
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                        <div class="header-right-info">
                                            <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                 
                                                <li class="nav-item">
                                                    <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
															<img src="assets/img/hammad.jpg" alt="" />
															<span class="admin-name"> {{ Auth::user()->first_name ." ".Auth::user()->last_name }} </span>
															<i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
													</a>
                                                    <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                       
                                                        <li><a href="#"><span class="fas fa-book"></span> My Profile</a>
                                                        </li>
                                                        
                                                        
                                                        <li>
                                                        <a class="dropdown-item" href="{{ route('logout') }}"
                                                            onclick="event.preventDefault();
                                                        document.getElementById('logout-form').submit();">
                                                         <span class="fas fa-sign-out-alt"></span> {{ __('Logout') }}
                                                        </a>
                                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                        @csrf
                                                        </form>

                                                        </li>
                                                    </ul>
                                                </li>
 
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             
        </div>

        
        <div class="content" style="min-height:900px;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="blog-details-inner">
                            <div class="row">
                                @yield('content')                         
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
        @include('layouts.footer')
       
             
    </div>

    @include('layouts.script')
  
</body>

</html>