<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page import="com.quanlinhatro.Khu" contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        %{--<meta name="layout" content="main"/>--}%
        <title></title>
    </head>
    <body>


    <div>
        <g:render template="/chuTro/show" model="[chuTro:chuTro]"/>
    </div>
    <div id="show-khu">
        <g:render template="/khu/show" model="[chuTro:chuTro]"/>
    </div>
    <div id="khutro-view">
        <g:render template="/khu/view"/>
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
