<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Quan Li Nha Tro"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--Style Sheet-->
        <link href="${resource(dir: 'assets/css', file: 'bootstrap.css')}" rel="stylesheet"/>
        <link href="${resource(dir: 'assets/css', file: 'bootstrap.min.css')}" rel="stylesheet"/>
        <link href="${resource(dir: 'assets/css', file: 'sidebar.css')}" rel="stylesheet"/>
        <!--Fonts-->

        <!--Script-->
        <script src="${resource(dir: 'assets/js', file: 'bootstrap.js')}"></script>
        <script src="${resource(dir: 'assets/js', file: 'bootstrap.min.js')}"></script>
        <script src="${resource(dir: 'assets/js', file: 'jquery-3.1.0.min.js')}"></script>


		<g:layoutHead/>
	</head>
	<body>
    <g:render template="/layouts/navbar"/>
    <g:render template="/layouts/sidebar"/>
    <div id="main-content">
        <g:layoutBody/>
    </div>
	</body>
</html>
