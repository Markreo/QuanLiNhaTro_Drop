<%@ page import="com.quanlinhatro.KhachThue" %>



<div class="fieldcontain ${hasErrors(bean: khachThueInstance, field: 'hoTenDem', 'error')} ">
	<label for="hoTenDem">
		<g:message code="khachThue.hoTenDem.label" default="Ho Ten Dem" />
		
	</label>
	<g:textField name="hoTenDem" value="${khachThueInstance?.hoTenDem}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: khachThueInstance, field: 'ten', 'error')} required">
	<label for="ten">
		<g:message code="khachThue.ten.label" default="Ten" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ten" required="" value="${khachThueInstance?.ten}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: khachThueInstance, field: 'ngaySinh', 'error')} ">
	<label for="ngaySinh">
		<g:message code="khachThue.ngaySinh.label" default="Ngay Sinh" />
		
	</label>
	<g:datePicker name="ngaySinh" precision="day"  value="${khachThueInstance?.ngaySinh}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: khachThueInstance, field: 'diaChi', 'error')} ">
	<label for="diaChi">
		<g:message code="khachThue.diaChi.label" default="Dia Chi" />
		
	</label>
	<g:select id="diaChi" name="diaChi.id" from="${com.quanlinhatro.DiaChi.list()}" optionKey="id" value="${khachThueInstance?.diaChi?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: khachThueInstance, field: 'soDienThoai', 'error')} ">
	<label for="soDienThoai">
		<g:message code="khachThue.soDienThoai.label" default="So Dien Thoai" />
		
	</label>
	<g:textField name="soDienThoai" value="${khachThueInstance?.soDienThoai}"/>

</div>

