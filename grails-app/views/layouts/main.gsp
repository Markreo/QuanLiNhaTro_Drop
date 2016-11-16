<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Head -->
<head>
    <meta charset="utf-8" />
    <title>Quản lí nhà trọ</title>

    <meta name="description" content="blank page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

    <!--Basic Styles-->
    <link href="${resource(dir: 'assets/css', file: 'bootstrap.min.css')}" rel="stylesheet"/>
    <link id="bootstrap-rtl-link" href="" rel="stylesheet" />
    <link href="${resource(dir: 'assets/css', file: 'font-awesome.min.css')}" rel="stylesheet"/>
    <link href="${resource(dir: 'assets/css', file: 'weather-icons.min.css')}" rel="stylesheet"/>
    <link href="${resource(file: 'qlnhatro.css')}" rel="stylesheet"/>
    <!--Fonts-->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300"
          rel="stylesheet" type="text/css">

    <!--Beyond styles-->
    <link href="${resource(dir: 'assets/css', file: 'beyond.min.css')}" rel="stylesheet"/>
    <link id="skin-link" href="" rel="stylesheet" type="text/css" />

    <link href="${resource(dir: 'assets/css', file: 'demo.min.css')}" rel="stylesheet"/>
    <link href="${resource(dir: 'assets/css', file: 'typicons.min.css')}" rel="stylesheet"/>
    <link href="${resource(dir: 'assets/css', file: 'animate.min.css')}" rel="stylesheet"/>

    <!--script-->
    <script src="${resource(dir: 'assets/js', file: 'skins.min.js')}"></script>
    <script src="${resource(dir: 'assets/js', file: 'jquery.min.js')}"></script>
    <script src="${resource(dir: 'assets/js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'assets/js/slimscroll', file: 'jquery.slimscroll.min.js')}"></script>
    <script src="${resource(dir: 'assets/js', file: 'paginate.js')}"></script>
    <script src="${resource(dir: 'assets/js/datatable', file: 'jquery.dataTables.js')}"></script>
    <script src="${resource(dir: 'assets/js/fuelux/wizard', file: 'wizard-custom.js')}"></script>
    <script src="${resource(dir: 'assets/js/toastr', file: 'toastr.js')}"></script>
    <!--Beyond Scripts-->
    <script src="${resource(dir: 'assets/js', file: 'beyond.min.js')}"></script>
    <script>
        $(document).on("click", "#sidebar-collapse", function () {
            console.log("abc")
            $("#sidebar").toggleClass(" menu-compact");
        })
    </script>
</head>

<body>
<sec:ifLoggedIn>
    <g:render template="/layouts/navbar"/>
    <div class="main-container container-fluid">
        <div class="page-container">
            <g:render template="/layouts/sidebar"/>
            <div class="page-content">
                <div class="page-body" id="page-body">
                    <g:layoutBody/>
                </div>
            </div>
        </div>
    </div>
    <g:render template="/layouts/footer"/>
</sec:ifLoggedIn>
</html>
