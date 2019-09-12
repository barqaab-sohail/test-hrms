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
<!--CDN ChartJS 
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js" charset="utf-8"></script>
 -->
 <script src="http://www.chartjs.org/dist/2.7.3/Chart.bundle.js"></script>
  <script src="http://www.chartjs.org/samples/latest/utils.js"></script>

<!-- ============================================================== -->
<!-- Style switcher -->
<!-- ============================================================== -->
<script src="{{asset('Massets/plugins/styleswitcher/jQuery.style.switcher.js') }}"></script>

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
    <script src=""></script>
    <!-- end - This is for export functionality only -->



@yield('scripts')
@stack('scripts')
<script src="{{asset('Massets/plugins/html5-editor/wysihtml5-0.3.0.js')}}"></script>
<script src="{{asset('Massets/plugins/html5-editor/bootstrap-wysihtml5.js')}}"></script>

<script src="{{asset('Massets/js/js-ui/jquery-ui.js')}}"></script>

<script src="{{asset('Massets/js/full-image/EZView.js') }}"></script>

<script src="{{asset('Massets/js/crop/jquery.imgareaselect.min.js') }}"></script>
<script src="{{asset('Massets/js/crop/croppie.min.js') }}"></script>

 <!-- Duplicate rows Merge -->
<script src="{{asset('Massets/js/rowsmerge/jquery.rowspanizer.min.js') }}"></script>


 



<script src="https://cdn.tiny.cloud/1/6k6kj2mbbmwv1jqeh7sqe7jf29uemxfwvq4kzdpz5a4j9gm1/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script> tinymce.init({
    selector: 'textarea',
    forced_root_block:"",
   
  });</script>


<script>

// Function Prevent Explorer Back Button 
function preventBack(){
    window.history.forward();
}
setTimeout("preventBack()",0);
window.onunload = function(){null};

//end function

   
    $(document).ready(function() {
        
        //Active Anchor tage with compare url and href
        $('.sidebar-nav li a').each(function(){
        var ThisHref = ($(this).attr('href').split('?'))[0];
        if(window.location.href.indexOf(ThisHref) > -1) {
            $(this).closest('a').not("#notInclude").css('color','red');
        }
        });
   

       $('select').select2({
            width: "100%",
            theme: "classic",
        });

                //get Date from Database and set as "Saturday, 24-August-2019"
                var weekday = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
                var months = ["January","February","March","April","May","June","July","August","September","October","November","December"];
                
                //if Date not empty than enter date with format 'Wednesday, 10-August-2010'

                $(".date_input").each(function(){
                    if ($(this).find('input').val()!=''){
                    var Date1 = new Date($(this).find('input').val());
                    $(this).find('input').val(
                    weekday[Date1.getDay()]+", "+
                    Date1.getDate()+"-"+months[Date1.getMonth()]
                    +"-"+Date1.getFullYear());
                    }else{
                        $(this).find('i').hide();
                    }

                });

                //If Click icon than clear date
                $(".date_input i").click(function (){
                    if(confirm("Are you sure to clear date")){
                    $(this).siblings('input').val("");
                    $(this).hide();
                    }
                });

                //If Chane date input than show date clear icon
                $(".date_input input").change(function (){
                       $(this).siblings('i').show();
                });

                // DatePicker
                @can('entry', Auth::user())
                    $(".date_input input").datepicker({
                    dateFormat: 'DD, d-MM-yy',
                    yearRange: '1940:'+ (new Date().getFullYear()+15),
                    changeMonth: true,
                    changeYear: true
                    });
                
                @endcan


             $('#myTableStored').DataTable({
                stateSave: false,
                dom: 'flrtip',

            });

    });
  //Email validation
function isValidEmailAddress(emailAddress) {
               var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
            return pattern.test(emailAddress);
            }           


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