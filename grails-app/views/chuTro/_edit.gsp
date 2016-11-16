<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
    <div class="row">
        <div class="col-xs-12">
            <div class="dashboard-box">
                <div class="box-header">
                    <div class="deadline">
                        Thông tin chủ trọ
                    </div>
                </div>

                <div class="box-tabbs">
                    <div class="tabbable">
                        <div class="tab-content tabs-flat no-padding">
                            <div class="tab-pane animated fadeIn no-padding-bottom active" style="padding:20px 20px 0 20px;">
                                <div class="row">
                                    <div class="col-md-12">
                                        <g:formRemote role="form" id="edit-chutro" name="form" url="[controller: 'chuTro',action: 'save']" update="chuTro">
                                            <g:if test="${chuTro.id}"><g:hiddenField name="id" value="${chuTro.id}"/> </g:if>
                                            <div class="form-title">
                                                Thông tin liên hệ:
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label for="hoTenDem">Họ - Tên đệm:</label>
                                                        <span class="input-icon icon-right">
                                                            <input class="form-control" name="hoTenDem" id="hoTenDem" placeholder="Họ Tên đệm " type="text" value="${chuTro?.hoTenDem}">
                                                            <i class="glyphicon glyphicon-user palegreen"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label for="ten">Tên</label>
                                                        <span class="input-icon icon-right">
                                                            <input class="form-control" name="ten" id="ten" placeholder="Tên" type="text" value="${chuTro?.ten}">
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
                                                            <input class="form-control" name="diaChi" id="diaChi" placeholder="Địa chỉ" type="text" value="${chuTro?.diaChi}">
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
                                                            <input class="form-control" name="email" id="email" placeholder="Email" type="email" value="${chuTro?.email}">
                                                            <i class="fa fa-envelope palegreen"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label for="soDienThoai">Số điện thoại</label>
                                                        <span class="input-icon icon-right">
                                                            <input class="form-control" name="soDienThoai" id="soDienThoai" placeholder="Số điện thoại" type="text" value="${chuTro?.soDienThoai}">
                                                            <i class="glyphicon glyphicon-phone palegreen"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>

                                        </g:formRemote>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-visits">
    <div class="row">
        <div class="col-lg-6 col-sm-6 col-xs-12">
            <div class="notification" style="cursor: pointer" onclick="submitform()">
                <div class="clearfix">
                    <div class="notification-icon">
                        <i class="fa fa-save palegreen bordered-1 bordered-palegreen"></i>
                    </div>
                    <div class="notification-body">
                        <span class="title">Lưu</span>
                        <span class="description">Lưu lại mọi thông tin trên</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-sm-6 col-xs-12">
            <div class="notification" style="cursor: pointer" onclick="cancel()">
                <div class="clearfix">
                    <div class="notification-icon">
                        <i class="fa fa-times bordered-1 bordered-orange orange"></i>
                    </div>
                    <div class="notification-body">
                        <span class="title">Hủy</span>
                        <span class="description">Trở về trang trước</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    var submitform = function () {
        $("#edit-chutro").submit()
    }
    var cancel = function () {
        console.log('cancel')
        var url = "${createLink(controller: 'chuTro', action: 'view')}"
        $.post(url, function (html) {
            console.log(html)
            $(document).find('#chuTro').html(html)
        })
    }
</script>