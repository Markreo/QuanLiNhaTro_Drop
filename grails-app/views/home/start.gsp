<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="layout" content="main"/>
        <title></title>
    </head>
    <body>
    <div class="page-body">
        <div class="col-md-8 col-md-offset-1">
            <g:render template="/chuTro/show" model="[chuTro:chuTro]"/>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            var _self = $(this)
            $(document).on('mouseenter mouseleave', ".group", function () {
                _self.find(".group-action").toggle()
            })
        })
    </script>
    </body>



</html>
