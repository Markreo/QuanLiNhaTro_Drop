<%@ page import="com.quanlinhatro.ChiPhi" %>



<div class="fieldcontain ${hasErrors(bean: chiPhiInstance, field: 'dichVu', 'error')} required">
	<label for="dichVu">
		<g:message code="chiPhi.dichVu.label" default="Dich Vu" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dichVu" name="dichVu.id" from="${com.quanlinhatro.DichVu.list()}" optionKey="id" required="" value="${chiPhiInstance?.dichVu?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chiPhiInstance, field: 'donVi', 'error')} required">
	<label for="donVi">
		<g:message code="chiPhi.donVi.label" default="Don Vi" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="donVi" value="${fieldValue(bean: chiPhiInstance, field: 'donVi')}" required=""/>

</div>

