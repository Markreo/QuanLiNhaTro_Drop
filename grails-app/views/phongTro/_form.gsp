<%@ page import="com.quanlinhatro.PhongTro" %>



<div class="fieldcontain ${hasErrors(bean: phongTroInstance, field: 'tenPhong', 'error')} required">
	<label for="tenPhong">
		<g:message code="phongTro.tenPhong.label" default="Ten Phong" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tenPhong" required="" value="${phongTroInstance?.tenPhong}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phongTroInstance, field: 'ghiChu', 'error')} ">
	<label for="ghiChu">
		<g:message code="phongTro.ghiChu.label" default="Ghi Chu" />
		
	</label>
	<g:textField name="ghiChu" value="${phongTroInstance?.ghiChu}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phongTroInstance, field: 'khu', 'error')} required">
	<label for="khu">
		<g:message code="phongTro.khu.label" default="Khu" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="khu" name="khu.id" from="${com.quanlinhatro.Khu.list()}" optionKey="id" required="" value="${phongTroInstance?.khu?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phongTroInstance, field: 'tinhTrang', 'error')} required">
	<label for="tinhTrang">
		<g:message code="phongTro.tinhTrang.label" default="Tinh Trang" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tinhTrang" from="${com.quanlinhatro.PhongTro$TinhTrang?.values()}" keys="${com.quanlinhatro.PhongTro$TinhTrang.values()*.name()}" required="" value="${phongTroInstance?.tinhTrang?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: phongTroInstance, field: 'khachThues', 'error')} ">
	<label for="khachThues">
		<g:message code="phongTro.khachThues.label" default="Khach Thues" />
		
	</label>
	<g:select name="khachThues" from="${com.quanlinhatro.KhachThue.list()}" multiple="multiple" optionKey="id" size="5" value="${phongTroInstance?.khachThues*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phongTroInstance, field: 'chiPhi', 'error')} ">
	<label for="chiPhi">
		<g:message code="phongTro.chiPhi.label" default="Chi Phi" />
		
	</label>
	<g:select name="chiPhi" from="${com.quanlinhatro.ChiPhi.list()}" multiple="multiple" optionKey="id" size="5" value="${phongTroInstance?.chiPhi*.id}" class="many-to-many"/>

</div>

