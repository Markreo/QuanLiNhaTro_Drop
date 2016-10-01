<%@ page import="com.quanlinhatro.DichVu" %>



<div class="fieldcontain ${hasErrors(bean: dichVuInstance, field: 'tenDichVu', 'error')} required">
	<label for="tenDichVu">
		<g:message code="dichVu.tenDichVu.label" default="Ten Dich Vu" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tenDichVu" required="" value="${dichVuInstance?.tenDichVu}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dichVuInstance, field: 'gia', 'error')} required">
	<label for="gia">
		<g:message code="dichVu.gia.label" default="Gia" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="gia" value="${fieldValue(bean: dichVuInstance, field: 'gia')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: dichVuInstance, field: 'dvt', 'error')} required">
	<label for="dvt">
		<g:message code="dichVu.dvt.label" default="Dvt" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="dvt" from="${com.quanlinhatro.DichVu$DonViTinh?.values()}" keys="${com.quanlinhatro.DichVu$DonViTinh.values()*.name()}" required="" value="${dichVuInstance?.dvt?.name()}" />

</div>

