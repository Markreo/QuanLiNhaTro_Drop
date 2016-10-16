<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 10/13/16
  Time: 10:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Đăng kí chủ trọ</title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="page-body">
    <div class="row">
        <div class="col-md-8 col-sm-12 col-xs-12">
            <div class="widget">
                <div class="widget-header bordered-bottom bordered-palegreen">
                    <span class="widget-caption">Cập nhật thông tin Chủ Trọ</span>
                </div>
                <div class="widget-body">
                    <div id="registration-form">
                        <g:form role="form" controller="chuTro" action="save">
                            <div class="form-title">
                                Địa chỉ liên hệ:
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="hoTenDem">Họ - Tên đệm:</label>
                                        <span class="input-icon icon-right">
                                            <input class="form-control" name="hoTenDem" id="hoTenDem" placeholder="Họ Tên đệm " type="text">
                                            <i class="glyphicon glyphicon-user palegreen"></i>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="ten">Tên</label>
                                        <span class="input-icon icon-right">
                                            <input class="form-control" name="ten" id="ten" placeholder="Tên " type="text">
                                            <i class="glyphicon glyphicon-user palegreen"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="diaChi">Địa chỉ</label>
                                        <span class="input-icon icon-right">
                                            <input class="form-control" name="diaChi" id="diaChi" placeholder="Địa chỉ" type="text">
                                            <i class="fa fa-map-marker palegreen"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="email">Địa chỉ Email</label>
                                        <span class="input-icon icon-right">
                                            <input class="form-control" name="email" id="email" placeholder="Email" type="email">
                                            <i class="fa fa-envelope palegreen"></i>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="soDienThoai">Số điện thoại</label>
                                        <span class="input-icon icon-right">
                                            <input class="form-control" name="soDienThoai" id="soDienThoai" placeholder="Số điện thoại" type="text">
                                            <i class="glyphicon glyphicon-phone palegreen"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-title">
                                Địa chỉ Khu trọ:
                            </div>
                            <div class="row" rel="insert">
                                <div rel="group">
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <span class="input-icon icon-right">
                                                <input class="form-control" name="khutro.ten" placeholder="Tên Khu trọ" type="text">
                                                <i class="fa fa-location-arrow palegreen"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <span class="input-icon icon-right">
                                                <input class="form-control" name="khutro.diaChi" placeholder="Địa chỉ Khu trọ" type="text">
                                                <i class="fa fa-map-marker palegreen"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="form-group">
                                            <a rel="khutro-add" href="javascript:void(0);" class="btn btn-palegreen btn-circle btn-xs center-block"><i class="fa fa-plus"></i></a>
                                            <a rel="khutro-remove" href="javascript:void(0);" class="btn btn-default btn-circle btn-xs center-block"><i class="fa fa-minus"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-default"><i class="fa fa-save"></i> Lưu</button>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="template" class="hide">
    <div rel="group">
        <div class="col-sm-5">
            <div class="form-group">
                <span class="input-icon icon-right">
                    <input class="form-control" name="khutro.ten" placeholder="Tên Khu trọ" type="text">
                    <i class="fa fa-location-arrow palegreen"></i>
                </span>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <span class="input-icon icon-right">
                    <input class="form-control" name="khutro.diaChi" placeholder="Địa chỉ Khu trọ" type="text">
                    <i class="fa fa-map-marker palegreen"></i>
                </span>
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <a rel="khutro-add" href="javascript:void(0);" class="btn btn-palegreen btn-circle btn-xs center-block"><i class="fa fa-plus"></i></a>
                <a rel="khutro-remove" href="javascript:void(0);" class="btn btn-default btn-circle btn-xs center-block"><i class="fa fa-minus"></i></a>
            </div>
        </div>
    </div>
</div>
<script>
$(document).ready(function () {
    $(document).on("click", "a[rel='khutro-add']", function () {
        console.log("click")
        var insert = $("div[rel='insert']");
        var template = $("#template")
        insert.append(template.html());
    })

    $(document).on("click", "a[rel='khutro-remove']", function () {
        var len = $("div[rel='group']")
        if($(len).length > 2) {
            var parent = $(this).parents("div[rel='group']")
            parent.remove()
        }
    })
})
</script>
</body>
</html>