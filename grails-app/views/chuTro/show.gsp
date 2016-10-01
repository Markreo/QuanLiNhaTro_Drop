
<%@ page import="com.quanlinhatro.ChuTro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'chuTro.label', default: 'ChuTro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-chuTro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-chuTro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list chuTro">
			
				<g:if test="${chuTroInstance?.hoTenDem}">
				<li class="fieldcontain">
					<span id="hoTenDem-label" class="property-label"><g:message code="chuTro.hoTenDem.label" default="Ho Ten Dem" /></span>
					
						<span class="property-value" aria-labelledby="hoTenDem-label"><g:fieldValue bean="${chuTroInstance}" field="hoTenDem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${chuTroInstance?.ten}">
				<li class="fieldcontain">
					<span id="ten-label" class="property-label"><g:message code="chuTro.ten.label" default="Ten" /></span>
					
						<span class="property-value" aria-labelledby="ten-label"><g:fieldValue bean="${chuTroInstance}" field="ten"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${chuTroInstance?.ngaySinh}">
				<li class="fieldcontain">
					<span id="ngaySinh-label" class="property-label"><g:message code="chuTro.ngaySinh.label" default="Ngay Sinh" /></span>
					
						<span class="property-value" aria-labelledby="ngaySinh-label"><g:formatDate date="${chuTroInstance?.ngaySinh}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${chuTroInstance?.diaChi}">
				<li class="fieldcontain">
					<span id="diaChi-label" class="property-label"><g:message code="chuTro.diaChi.label" default="Dia Chi" /></span>
					
						<span class="property-value" aria-labelledby="diaChi-label"><g:link controller="diaChi" action="show" id="${chuTroInstance?.diaChi?.id}">${chuTroInstance?.diaChi?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${chuTroInstance?.soDienThoai}">
				<li class="fieldcontain">
					<span id="soDienThoai-label" class="property-label"><g:message code="chuTro.soDienThoai.label" default="So Dien Thoai" /></span>
					
						<span class="property-value" aria-labelledby="soDienThoai-label"><g:fieldValue bean="${chuTroInstance}" field="soDienThoai"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${chuTroInstance?.khus}">
				<li class="fieldcontain">
					<span id="khus-label" class="property-label"><g:message code="chuTro.khus.label" default="Khus" /></span>
					
						<g:each in="${chuTroInstance.khus}" var="k">
						<span class="property-value" aria-labelledby="khus-label"><g:link controller="khu" action="show" id="${k.id}">${k?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${chuTroInstance?.taiKhoan}">
				<li class="fieldcontain">
					<span id="taiKhoan-label" class="property-label"><g:message code="chuTro.taiKhoan.label" default="Tai Khoan" /></span>
					
						<span class="property-value" aria-labelledby="taiKhoan-label"><g:link controller="user" action="show" id="${chuTroInstance?.taiKhoan?.id}">${chuTroInstance?.taiKhoan?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:chuTroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${chuTroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
