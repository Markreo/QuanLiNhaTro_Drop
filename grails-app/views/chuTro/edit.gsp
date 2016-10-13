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
                <div class="widget-header bordered-bottom bordered-lightred">
                    <span class="widget-caption">Cập nhật thông tin Chủ Trọ</span>
                </div>
                <div class="widget-body">
                    <div id="registration-form">
                        <g:form role="form" controller="chuTro" action="save">
                            <div class="form-title">
                                Địa chỉ liên hệ
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
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="email">Địa chỉ Email</label>
                                        <span class="input-icon icon-right">
                                            <input class="form-control" name="email" id="email" placeholder="Email" type="email">
                                            <i class="fa fa-envelope blue"></i>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="doSienThoi">Số điện thoại</label>
                                        <span class="input-icon icon-right">
                                            <input class="form-control" id="exampleInputName2" placeholder="Số điện thoại" type="text">
                                            <i class="glyphicon glyphicon-user palegreen"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="exampleInputEmail2">Message</label>
                                        <span class="input-icon icon-right">
                                            <textarea class="form-control" rows="10"></textarea>
                                            <i class="glyphicon glyphicon-briefcase darkorange"></i>
                                        </span>
                                        <p class="help-block">Your message will be in this text area.</p>
                                    </div>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input class="colored-danger" type="checkbox">
                                        <span class="text">Notify me through E-mail</span>
                                    </label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-danger">Submit</button>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>