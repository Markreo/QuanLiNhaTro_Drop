<%@ page import="com.quanlinhatro.TinhTrang" %>



<div class="fieldcontain ${hasErrors(bean: tinhTrangInstance, field: 'tenTinhTrang', 'error')} required">
	<label for="tenTinhTrang">
		<g:message code="tinhTrang.tenTinhTrang.label" default="Ten Tinh Trang" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tenTinhTrang" required="" value="${tinhTrangInstance?.tenTinhTrang}"/>

</div>

