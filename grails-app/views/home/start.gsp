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
            <div class="page" style=" padding: 10px;">
                <div class="group" style="border: 1px solid #dbdbdb; border-radius: 7px; padding: 10px; margin-top:10px; background: white">
                    <div class="edit" style="float: right; display: none">
                        <a href="javascript:void(0)" class="btn btn-default"><i class="fa fa-edit"></i>Edit </a>
                    </div>
                    <div class="tab" style="margin-top: -20px;border-left:4px solid #2dc3e8; position: absolute; border-radius: 3px;margin-bottom: 10px;background-image: linear-gradient(to bottom,#fff 0,#ededed 100%);padding: 5px 15px 5px 5px; box-shadow: 0 0 1px 1px rgba(0,0,0,.1)" >
                        <h4 style="margin: 0px; font-size: 16px; color: #717171">Thông tin chủ trọ</h4>
                    </div>
                    <div class="content" style="margin-top: 10px; padding: 8px; ">
                        <p class="field" style="margin: 2px"> Họ tên: ${chuTro.hoTen}</p>
                        <p class="field" style="margin: 2px"> Số điện thoại: ${chuTro.soDienThoai}</p>
                        <g:if test="${chuTro.diaChi}"> <p class="field" style="margin: 2px"> Địa chỉ: ${chuTro.diaChi}</p> </g:if>
                        <g:if test="${chuTro.email}"> <p class="field" style="margin: 2px"> Email: ${chuTro.email}</p> </g:if>
                        <g:if test="${chuTro.ngaySinh}"> <p class="field" style="margin: 2px"> Ngày sinh: ${chuTro.ngaySinh}</p> </g:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            console.log($("div.group"))
            var _self = $(this)
            $(document).on('mouseover', ".group", function () {
                _self.find(".edit").toggle('slow')
            })
        })
    </script>
    </body>



</html>
