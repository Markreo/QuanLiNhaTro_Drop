<%@ page import="com.quanlinhatro.Khu" %>



<div class="fieldcontain ${hasErrors(bean: khuInstance, field: 'ten', 'error')} required">
	<label for="ten">
		<g:message code="khu.ten.label" default="Ten" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ten" required="" value="${khuInstance?.ten}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: khuInstance, field: 'diaChi', 'error')} required">
	<label for="diaChi">
		<g:message code="khu.diaChi.label" default="Dia Chi" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="diaChi" name="diaChi.id" from="${com.quanlinhatro.DiaChi.list()}" optionKey="id" required="" value="${khuInstance?.diaChi?.id}" class="many-to-one"/>

</div>

