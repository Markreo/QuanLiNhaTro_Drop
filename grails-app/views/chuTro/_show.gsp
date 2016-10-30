<div class="page" id="show-chuTro">
    <div class="group">
        <div class="tab">
            <h4 class="tab-title">Thông tin chủ trọ</h4>
        </div>
        <div class="content" id="chuTro">
            <div class="group-action">
                <g:remoteLink controller="chuTro" action="edit" id="${chuTro.id}" update="chuTro" class="btn btn-default"> <i class="fa fa-edit"></i> Edit</g:remoteLink>
            </div>
            <p class="field" style="margin: 2px"> Họ tên: ${chuTro.hoTen}</p>
            <p class="field" style="margin: 2px"> Số điện thoại: ${chuTro.soDienThoai}</p>
            <g:if test="${chuTro.diaChi}"> <p class="field" style="margin: 2px"> Địa chỉ: ${chuTro.diaChi}</p> </g:if>
            <g:if test="${chuTro.email}"> <p class="field" style="margin: 2px"> Email: ${chuTro.email}</p> </g:if>
            <g:if test="${chuTro.ngaySinh}"> <p class="field" style="margin: 2px"> Ngày sinh: ${chuTro.ngaySinh}</p> </g:if>
        </div>
    </div>
</div>