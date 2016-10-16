<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 10/16/2016
  Time: 4:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Danh sách khu trọ</title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="page-breadcrumbs">
    <ul class="breadcrumb">
        <li>
            <i class="fa fa-home"></i>
            <a href="#">Dasboard</a>
        </li>
        <li class="active">Khu trọ</li>
    </ul>
</div>
<div class="page-body" id="main_content">
    <div class="row">
        <div class="col-xs-12 col-md-12">
            <div class="widget">
                <div class="widget-header with-footer">
                    <span class="widget-caption"> <i class="fa "></i> Khu trọ </span>
                </div>
                <div class="well with-footer">
                    <div class="table-toolbar pull-right">
                        <div class="btn-group">
                            <g:textField type="text" id="search-input" name="search-input" class="form-control input-sm" placeholder="Tìm kiếm một khu trọ..."/>
                        </div>
                        <div class="btn-group">
                            <a class="btn btn-default btn-sm shiny icon-only blue" href="${createLink(controller: 'agency', action: 'create')}">
                                <i class="fa fa-plus"></i>
                            </a>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <table id="khu_tros_table" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>Tên khu trọ</th>
                            <th>Địa chỉ khu trọ</th>
                            <th>Số lượng phòng</th>
                            <th width="20%">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready (function () {
        Datatable.init("#khu_tros_table", "${createLink(controller: 'khu', action: 'khus')}", "#search-input")
    })
</script>
</body>
</html>