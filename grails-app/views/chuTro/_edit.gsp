<div id="registration-form">
    <g:formRemote role="form" name="form" url="[controller: 'chuTro',action: 'save']" update="show-chuTro">
        <g:if test="${chuTro.id}"><g:hiddenField name="id" value="${chuTro.id}"/> </g:if>
        <div class="form-title">
            Địa chỉ liên hệ:
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
        <button type="submit" class="btn btn-default"><i class="fa fa-save"></i> Lưu</button>
        <g:remoteLink url="[controller: 'chuTro',action: 'show']" class="btn btn-default" update="show-chuTro"><i class="fa fa-reply"></i> Hủy</g:remoteLink>
    </g:formRemote>
</div>