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
<!--Menu sidebar Dropdown Effect-->
<script src="{{asset('Massets/js/sidebarmenu.js') }}"></script>
<!--stickey kit -->
<script src="{{asset('Massets/plugins/sticky-kit-master/dist/sticky-kit.min.js') }}"></script>
<script src="{{asset('Massets/plugins/sparkline/jquery.sparkline.min.js') }}"></script>
<!--Custom JavaScript in HRMS -->
<script src="{{asset('Massets/js/custom.js') }}"></script>

<!-- ============================================================== -->
<!-- This page plugins -->
<!-- ============================================================== -->
<!-- chartist chart -->
<!--c3 JavaScript -->
<script src="{{asset('Massets/plugins/d3/d3.min.js') }}"></script>
<script src="{{asset('Massets/plugins/c3-master/c3.min.js') }}"></script>
<!-- Chart JS 
<script src="{{asset('Massets/js/dashboard1.js') }}"></script>
<script src="{{asset('Massets/js/dashboard1.js') }}"></script>
-->
<!--CDN ChartJS -->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js" charset="utf-8"></script>

<!-- ============================================================== -->
<!-- Style switcher -->
<!-- ============================================================== -->
<script src="{{asset('Massets/plugins/styleswitcher/jQuery.style.switcher.js') }}"></script>
<script src="{{asset('Massets/plugins/datatables/datatables.min.js')}}"></script>
<script src="{{asset('Massets/select2/select2.full.min.js')}}"></script>
<!-- This is data table -->
    <script src="{{asset('Massets/plugins/datatables/datatables.min.js')}}"></script>
    <!-- start - This is for export functionality only -->
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <!-- end - This is for export functionality only -->
@yield('scripts')
@stack('scripts')
<script src="{{asset('Massets/plugins/html5-editor/wysihtml5-0.3.0.js')}}"></script>
<script src="{{asset('Massets/plugins/html5-editor/bootstrap-wysihtml5.js')}}"></script>
<script src="{{asset('Massets/js/js-ui/jquery-ui.min.js') }}"></script>
<script src="{{asset('Massets/js/full-image/EZView.js') }}"></script>

<script src="{{asset('Massets/js/crop/jquery.imgareaselect.min.js') }}"></script>
<script src="{{asset('Massets/js/crop/croppie.min.js') }}"></script>




<script src="https://cdn.tiny.cloud/1/6k6kj2mbbmwv1jqeh7sqe7jf29uemxfwvq4kzdpz5a4j9gm1/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script> tinymce.init({
    selector: 'textarea',
    forced_root_block:"",
   
  });</script>
<script>
    $(document).ready(function() {

       

    });
</script>
 <!--
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
-->