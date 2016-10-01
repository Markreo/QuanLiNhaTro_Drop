<%@ page import="com.quanlinhatro.ChuTro" %>



<div class="fieldcontain ${hasErrors(bean: chuTroInstance, field: 'hoTenDem', 'error')} ">
	<label for="hoTenDem">
		<g:message code="chuTro.hoTenDem.label" default="Ho Ten Dem" />
		
	</label>
	<g:textField name="hoTenDem" value="${chuTroInstance?.hoTenDem}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chuTroInstance, field: 'ten', 'error')} required">
	<label for="ten">
		<g:message code="chuTro.ten.label" default="Ten" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ten" required="" value="${chuTroInstance?.ten}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chuTroInstance, field: 'ngaySinh', 'error')} ">
	<label for="ngaySinh">
		<g:message code="chuTro.ngaySinh.label" default="Ngay Sinh" />
		
	</label>
	<g:datePicker name="ngaySinh" precision="day"  value="${chuTroInstance?.ngaySinh}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: chuTroInstance, field: 'diaChi', 'error')} ">
	<label for="diaChi">
		<g:message code="chuTro.diaChi.label" default="Dia Chi" />
		
	</label>
	<g:select id="diaChi" name="diaChi.id" from="${com.quanlinhatro.DiaChi.list()}" optionKey="id" value="${chuTroInstance?.diaChi?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chuTroInstance, field: 'soDienThoai', 'error')} ">
	<label for="soDienThoai">
		<g:message code="chuTro.soDienThoai.label" default="So Dien Thoai" />
		
	</label>
	<g:textField name="soDienThoai" value="${chuTroInstance?.soDienThoai}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chuTroInstance, field: 'khus', 'error')} ">
	<label for="khus">
		<g:message code="chuTro.khus.label" default="Khus" />
		
	</label>
	<g:select name="khus" from="${com.quanlinhatro.Khu.list()}" multiple="multiple" optionKey="id" size="5" value="${chuTroInstance?.khus*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chuTroInstance, field: 'taiKhoan', 'error')} required">
	<label for="taiKhoan">
		<g:message code="chuTro.taiKhoan.label" default="Tai Khoan" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="taiKhoan" name="taiKhoan.id" from="${com.quanlinhatro.auth.User.list()}" optionKey="id" required="" value="${chuTroInstance?.taiKhoan?.id}" class="many-to-one"/>

</div>

