<!-- All Jquery -->
<!-- ============================================================== -->

<script src="{{asset('Massets/plugins/jquery/jquery.min.js') }}"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="{{asset('Massets/plugins/popper/popper.min.js') }}"></script>
<script src="{{asset('Massets/plugins/bootstrap/js/bootstrap.min.js') }}"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="{{asset('Massets/js/jquery.slimscroll.js') }}"></script>
<!--Wave Effects -->
<script src="{{asset('Massets/js/waves.js') }}"></script>
<!--Menu sidebar -->
<script src="{{asset('Massets/js/sidebarmenu.js') }}"></script>
<!--stickey kit -->
<script src="{{asset('Massets/plugins/sticky-kit-master/dist/sticky-kit.min.js') }}"></script>
<script src="{{asset('Massets/plugins/sparkline/jquery.sparkline.min.js') }}"></script>
<!--Custom JavaScript -->
<script src="{{asset('Massets/js/custom.min.js') }}"></script>

<!-- ============================================================== -->
<!-- This page plugins -->
<!-- ============================================================== -->
<!-- chartist chart -->
<!--c3 JavaScript -->
<script src="{{asset('Massets/plugins/d3/d3.min.js') }}"></script>
<script src="{{asset('Massets/plugins/c3-master/c3.min.js') }}"></script>
<!-- Chart JS -->
<script src="{{asset('Massets/js/dashboard1.js') }}"></script>
<script src="{{asset('Massets/js/dashboard1.js') }}"></script>
<!--CDN ChartJS -->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js" charset="utf-8"></script>

<!-- ============================================================== -->
<!-- Style switcher -->
<!-- ============================================================== -->
<script src="{{asset('Massets/plugins/styleswitcher/jQuery.style.switcher.js') }}"></script>
<script src="{{asset('Massets/plugins/datatables/datatables.min.js')}}"></script>
<script src="{{asset('Massets/select2/select2.full.min.js')}}"></script>
@yield('scripts')
@stack('scripts')
<script src="{{asset('Massets/plugins/html5-editor/wysihtml5-0.3.0.js')}}"></script>
<script src="{{asset('Massets/plugins/html5-editor/bootstrap-wysihtml5.js')}}"></script>
<script src="{{asset('Massets/js/js-ui/jquery-ui.min.js') }}"></script>
<script src="{{asset('Massets/js/full-image/EZView.js') }}"></script>
<script>
    $(document).ready(function() {

        $('.textarea_editor').wysihtml5();


    });
</script>
<script src="{{asset('js/validation.js')}}"></script>
<script>
    ! function(window, document, $) {
        "use strict";
        $("input,select,textarea").not("[type=submit]").jqBootstrapValidation(),
            $(".skin-square input").iCheck({
                checkboxClass: "icheckbox_square-green",
                radioClass: "iradio_square-green"
            }),
            $(".touchspin").TouchSpin(), $(".switchBootstrap").bootstrapSwitch();
    }(window, document, jQuery);
</script>