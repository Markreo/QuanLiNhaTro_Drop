
<%@ page import="com.quanlinhatro.KhachThue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'khachThue.label', default: 'KhachThue')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-khachThue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-khachThue" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list khachThue">
			
				<g:if test="${khachThueInstance?.hoTenDem}">
				<li class="fieldcontain">
					<span id="hoTenDem-label" class="property-label"><g:message code="khachThue.hoTenDem.label" default="Ho Ten Dem" /></span>
					
						<span class="property-value" aria-labelledby="hoTenDem-label"><g:fieldValue bean="${khachThueInstance}" field="hoTenDem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${khachThueInstance?.ten}">
				<li class="fieldcontain">
					<span id="ten-label" class="property-label"><g:message code="khachThue.ten.label" default="Ten" /></span>
					
						<span class="property-value" aria-labelledby="ten-label"><g:fieldValue bean="${khachThueInstance}" field="ten"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${khachThueInstance?.ngaySinh}">
				<li class="fieldcontain">
					<span id="ngaySinh-label" class="property-label"><g:message code="khachThue.ngaySinh.label" default="Ngay Sinh" /></span>
					
						<span class="property-value" aria-labelledby="ngaySinh-label"><g:formatDate date="${khachThueInstance?.ngaySinh}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${khachThueInstance?.diaChi}">
				<li class="fieldcontain">
					<span id="diaChi-label" class="property-label"><g:message code="khachThue.diaChi.label" default="Dia Chi" /></span>
					
						<span class="property-value" aria-labelledby="diaChi-label"><g:link controller="diaChi" action="show" id="${khachThueInstance?.diaChi?.id}">${khachThueInstance?.diaChi?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${khachThueInstance?.soDienThoai}">
				<li class="fieldcontain">
					<span id="soDienThoai-label" class="property-label"><g:message code="khachThue.soDienThoai.label" default="So Dien Thoai" /></span>
					
						<span class="property-value" aria-labelledby="soDienThoai-label"><g:fieldValue bean="${khachThueInstance}" field="soDienThoai"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:khachThueInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${khachThueInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
