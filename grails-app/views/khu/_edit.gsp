<%@ page import="com.quanlinhatro.Khu" %>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="row">
        <div class="col-xs-12">
            <div class="dashboard-box">
                <div class="box-header">
                    <div class="deadline">
                        Tạo một khu
                    </div>
                </div>
                <div class="box-tabbs">
                    <div id="WiredWizard" class="wizard wizard-wired" data-target="#WiredWizardsteps">
                        <ul class="steps">
                            <li data-target="#wiredstep1" class="active"><span class="step">1</span><span class="title">Thông tin khu</span><span class="chevron"></span></li>
                            <li data-target="#wiredstep2" id="step2"><span class="step">2</span><span class="title">Thông tin chi tiết</span> <span class="chevron"></span></li>
                            <li data-target="#wiredstep3"><span class="step">3</span><span class="title">Bảng giá</span> <span class="chevron"></span></li>
                            <li data-target="#wiredstep4"><span class="step">4</span><span class="title">Hình ảnh</span> <span class="chevron"></span></li>
                            <li data-target="#wiredstep5"><span class="step">5</span><span class="title">Kết thúc</span> <span class="chevron"></span></li>
                        </ul>
                    </div>
                    <div class="step-content" id="WiredWizardsteps" style="padding-left:0px">
                        <div class="step-pane active" id="wiredstep1">
                            <h6 class="row-title before-green no-margin-top">Thông tin khu</h6>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Tên khu</label>
                                            <span class="input-icon icon-right">
                                                <input class="form-control" name="ten" placeholder="Tên khu" type="text">
                                                <i class="fa fa-home palegreen"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Địa chỉ</label>
                                            <span class="input-icon icon-right">
                                                <input class="form-control" name="diaChi" placeholder="Địa chỉ" type="text">
                                                <i class="fa fa-map-marker palegreen"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Loại hình</label>
                                            <span class="input-icon">
                                                <g:select id="loaihinh" name="loai" from="${com.quanlinhatro.Khu.Loai.values()}" optionValue="name" class="form-control" noSelection="${['null':"Chọn một loại..."]}"></g:select>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Diện tích chung</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control">
                                                <span class="input-group-addon">.00 m<sup>2</sup></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Năm xây dựng</label>
                                            <span class="input-icon">
                                                <input type="text" class="form-control">
                                            </span>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Xác định lại vị trí trên bản đồ</label>
                                        <div class="well well-sm"><iframe width="100%" height="450" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20c%C3%B4ng%20ngh%E1%BB%87%20th%C3%B4ng%20tin&key=AIzaSyDdCSr9vabayz2eiL6j5IrVdzmaz3uCY1Q" allowfullscreen></iframe></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="step-pane" id="wiredstep2">
                            <h6 class="row-title before-green no-margin-top">Thông tin chi tiết</h6>
                            <div id="khutro-view-thongtinchitiet">

                            </div>
                        </div>
                        <div class="step-pane" id="wiredstep3">This is step 3</div>
                        <div class="step-pane" id="wiredstep4">This is step 4</div>
                        <div class="step-pane" id="wiredstep5">This is step 5</div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="actions actions-footer" id="WiredWizard-actions">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default btn-sm btn-prev"> <i class="fa fa-angle-left"></i>Trước</button>
                            <button type="button" class="btn btn-default btn-sm btn-next" data-last="Xong">Tiếp<i class="fa fa-angle-right"></i></button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('#WiredWizard').wizard();

        $("#loaihinh").on('change', function (event) {
            var selected = $(this).val();
            switch (selected) {
                case 'DAYTRO': {
                    $("#khutro-view-thongtinchitiet").html($("#khutro-view-thongtindaytro").html());
                    break;
                }
                default: {
                    console.log("default")
                    $("#khutro-view-thongtinchitiet").html("");
                }
            }
        })
    })
</script>

<div id="khutro-view-thongtindaytro" style="display: none">
    <div class="col-md-12">
        <div class="form-title">
            Loại phòng trọ:
        </div>
        <div class="row" rel="form">
            <div rel="group">
                <div class="col-md-6 col-sm-12">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>Tên loại khu trọ:</label>
                                <span class="input-icon icon-right">
                                    <input class="form-control" name="loaiPhong.ten" placeholder="Tên loại khu trọ" type="text">
                                    <i class="fa fa-home palegreen"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                                <label>Diện tích:</label>
                                <div class="input-group">
                                    <input name="loaPhong.dienTich" type="text" class="form-control">
                                    <span class="input-group-addon">.00 m<sup>2</sup></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                                <label>Giá:</label>
                                <div class="input-group">
                                    <input name="loaPhong.gia" type="number" class="form-control">
                                    <span class="input-group-addon">VNĐ</span>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="form-group">
                        <label>Mô tả:</label>
                        <span class="input-icon icon-right">
                            <textarea class="form-control" rows="5"></textarea>
                            <i class="fa fa-file-text-o palegreen"></i>
                        </span>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="form-group">

                        <label>Công trình phụ:</label>
                    </div>
                    <div class="form-group">
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text"> &nbsp;Nhà vệ sinh riêng</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; Gác trên</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text"> &nbsp;Tường ốp gạch men</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; Bồn rửa tay</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; Bồn cầu bệt</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; Bồn cầu xổm</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; Vòi hoa sen</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; </span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>