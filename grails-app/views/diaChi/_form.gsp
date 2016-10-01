<%@ page import="com.quanlinhatro.DiaChi" %>



<div class="fieldcontain ${hasErrors(bean: diaChiInstance, field: 'diaChi', 'error')} ">
	<label for="diaChi">
		<g:message code="diaChi.diaChi.label" default="Dia Chi" />
		
	</label>
	<g:textField name="diaChi" value="${diaChiInstance?.diaChi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: diaChiInstance, field: 'soNha', 'error')} ">
	<label for="soNha">
		<g:message code="diaChi.soNha.label" default="So Nha" />
		
	</label>
	<g:textField name="soNha" value="${diaChiInstance?.soNha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: diaChiInstance, field: 'tenDuong', 'error')} ">
	<label for="tenDuong">
		<g:message code="diaChi.tenDuong.label" default="Ten Duong" />
		
	</label>
	<g:textField name="tenDuong" value="${diaChiInstance?.tenDuong}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: diaChiInstance, field: 'thon', 'error')} ">
	<label for="thon">
		<g:message code="diaChi.thon.label" default="Thon" />
		
	</label>
	<g:textField name="thon" value="${diaChiInstance?.thon}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: diaChiInstance, field: 'xa', 'error')} ">
	<label for="xa">
		<g:message code="diaChi.xa.label" default="Xa" />
		
	</label>
	<g:textField name="xa" value="${diaChiInstance?.xa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: diaChiInstance, field: 'huyen', 'error')} required">
	<label for="huyen">
		<g:message code="diaChi.huyen.label" default="Huyen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="huyen" required="" value="${diaChiInstance?.huyen}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: diaChiInstance, field: 'tinh', 'error')} required">
	<label for="tinh">
		<g:message code="diaChi.tinh.label" default="Tinh" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tinh" required="" value="${diaChiInstance?.tinh}"/>

</div>

