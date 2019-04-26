   <!-- Start Left menu area -->
    <div class="left-sidebar-pro">
        <nav id="sidebar" class="">
            <div class="sidebar-header">
                <a href=""><img class="main-logo" src="assets/img/logo-6.png" alt=""/></a>
                <strong><a href="">HRMS</a></strong>
            </div>
            <div class="left-custom-menu-adp-wrap comment-scrollbar">
                <nav class="sidebar-nav left-sidebar-menu-pro">
                    <ul class="metismenu" id="menu1">
                        <li class="active">
                            <a class="has-arrow" href="index.html">
								  <span style="font-size: 1.5em;">
                                  <i class="fas fa-address-card"></i>
								   <span class="mini-click-non">HR</span>
								</a>
                            <ul class="submenu-angle" aria-expanded="true">
                                
                                 @if (Auth::user()->role_id===1)
                                <li><a title="Dashboard v.1" href="{{url('newUser')}}"><span class="mini-sub-pro">New User</span></a></li>
                                @endif

                                <li><a title="Dashboard v.2" href="{{url('listOfEmployees')}}"><span class="mini-sub-pro">List of Employees</span></a></li>
                                <li><a title="Dashboard v.3" href=""><span class="mini-sub-pro">HR-3</span></a></li>
                                <li><a title="Analytics" href=""><span class="mini-sub-pro">HR-3</span></a></li>
                                <li><a title="Widgets" href=""><span class="mini-sub-pro">HR-4</span></a></li>
                            </ul>
                        </li>
                         <li>
                            <a class="has-arrow" href="index.html">
                                  <span style="font-size: 1.5em;">
                                  <i class="fas fa-address-card"></i>
                                   <span class="mini-click-non">HR</span>
                                </a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="Dashboard v.1" href=""><span class="mini-sub-pro">HR-1</span></a></li>
                                <li><a title="Dashboard v.2" href=""><span class="mini-sub-pro">HR-2</span></a></li>
                                <li><a title="Dashboard v.3" href=""><span class="mini-sub-pro">HR-3</span></a></li>
                                <li><a title="Analytics" href=""><span class="mini-sub-pro">HR-3</span></a></li>
                                <li><a title="Widgets" href=""><span class="mini-sub-pro">HR-4</span></a></li>
                            </ul>
                        </li>
                       
                        <!--
                        <li>
                            <a class="has-arrow" href="all-professors.html" aria-expanded="false"><span class="educate-icon educate-professor icon-wrap"></span> <span class="mini-click-non">Main-2</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="All Professors" href="#"><span class="mini-sub-pro">Main-2-1</span></a></li>
                                <li><a title="Add Professor" href="#"><span class="mini-sub-pro">Main-2-2</span></a></li>
                                <li><a title="Edit Professor" href="#"><span class="mini-sub-pro">Main-2-3</span></a></li>
                                <li><a title="Professor Profile" href="#"><span class="mini-sub-pro">Main-2-4</span></a></li>
                            </ul>
                        </li>
                        -->
                                             
                       
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
    <!-- End Left menu area -->