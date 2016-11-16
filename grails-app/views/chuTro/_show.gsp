<div id="chuTro">
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
                                <div class="tab-pane animated fadeInUp no-padding-bottom active" style="padding:20px 20px 0 20px;">
                                    <div class="row" >
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12"  >

                                            <div class="databox databox-xlg databox-vertical databox-inverted databox-shadowed">
                                                %{--<img src="${resource(dir: "/assets/img/avatars", file: "divyia.jpg")}" />--}%
                                            </div>

                                        </div>
                                        <div class="col-lg-9 col-md-9 col-sm-6 col-xs-12">
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
                        <div class="box-visits">
                            <div class="row">
                                <div class="col-lg-4 col-sm-4 col-xs-12">
                                    <div class="notification" style="cursor: pointer" onclick="update_chutro()">
                                        <div class="clearfix">
                                            <div class="notification-icon">
                                                <i class="fa fa-edit palegreen bordered-1 bordered-palegreen"></i>
                                            </div>
                                            <div class="notification-body">
                                                <span class="title">Cập nhật</span>
                                                <span class="description">Lần cuối: 15/6/2016</span>
                                            </div>
                                            <div class="notification-extra">
                                                <i class="fa fa-clock-o palegreen"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-sm-4 col-xs-12">
                                    <div class="notification">
                                        <div class="clearfix">
                                            <div class="notification-icon">
                                                <i class="fa fa-check azure bordered-1 bordered-azure"></i>
                                            </div>
                                            <div class="notification-body">
                                                <span class="title">Chỉnh sửa lần cuối</span>
                                                <span class="description">15/6/2016 3:59 PM</span>
                                            </div>
                                            <div class="notification-extra">
                                                <i class="fa fa-clock-o azure"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-sm-4 col-xs-12">
                                    <div class="notification">
                                        <div class="clearfix">
                                            <div class="notification-icon">
                                                <i class="fa fa-phone bordered-1 bordered-orange orange"></i>
                                            </div>
                                            <div class="notification-body">
                                                <span class="title">Meeting with Patty</span>
                                                <span class="description">01:00 pm</span>
                                            </div>
                                            <div class="notification-extra">
                                                <i class="fa fa-clock-o orange"></i>
                                                <span class="description">office</span>
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
    var update_chutro = function () {
        var url = "${createLink(controller: 'chuTro', action: 'edit', id: chuTro.id)}"
        $.post(url, function (html) {
            $(document).find('#chuTro').html(html)
        })
    }
</script>