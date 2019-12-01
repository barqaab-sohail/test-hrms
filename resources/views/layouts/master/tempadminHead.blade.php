<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('Massets/images/favicon.ico') }}">
    <title>{{config('app.name')}}</title>
    
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="user_id" content="{{Auth::check() ? Auth::user()->id :''}}">

    <!-- Bootstrap Core CSS -->
    <link href="{{asset('Massets/js/js-ui/jquery-ui.min.css') }}" rel="stylesheet">
    <link href="{{asset('Massets/plugins/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">

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
     
    <!-- end - This is for datatabe Fixed Columns only -->
    
  

   
</head>