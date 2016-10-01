
<%@ page import="com.quanlinhatro.PhongTro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phongTro.label', default: 'PhongTro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-phongTro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-phongTro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list phongTro">
			
				<g:if test="${phongTroInstance?.tenPhong}">
				<li class="fieldcontain">
					<span id="tenPhong-label" class="property-label"><g:message code="phongTro.tenPhong.label" default="Ten Phong" /></span>
					
						<span class="property-value" aria-labelledby="tenPhong-label"><g:fieldValue bean="${phongTroInstance}" field="tenPhong"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${phongTroInstance?.ghiChu}">
				<li class="fieldcontain">
					<span id="ghiChu-label" class="property-label"><g:message code="phongTro.ghiChu.label" default="Ghi Chu" /></span>
					
						<span class="property-value" aria-labelledby="ghiChu-label"><g:fieldValue bean="${phongTroInstance}" field="ghiChu"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${phongTroInstance?.khu}">
				<li class="fieldcontain">
					<span id="khu-label" class="property-label"><g:message code="phongTro.khu.label" default="Khu" /></span>
					
						<span class="property-value" aria-labelledby="khu-label"><g:link controller="khu" action="show" id="${phongTroInstance?.khu?.id}">${phongTroInstance?.khu?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${phongTroInstance?.tinhTrang}">
				<li class="fieldcontain">
					<span id="tinhTrang-label" class="property-label"><g:message code="phongTro.tinhTrang.label" default="Tinh Trang" /></span>
					
						<span class="property-value" aria-labelledby="tinhTrang-label"><g:fieldValue bean="${phongTroInstance}" field="tinhTrang"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${phongTroInstance?.khachThues}">
				<li class="fieldcontain">
					<span id="khachThues-label" class="property-label"><g:message code="phongTro.khachThues.label" default="Khach Thues" /></span>
					
						<g:each in="${phongTroInstance.khachThues}" var="k">
						<span class="property-value" aria-labelledby="khachThues-label"><g:link controller="khachThue" action="show" id="${k.id}">${k?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${phongTroInstance?.chiPhi}">
				<li class="fieldcontain">
					<span id="chiPhi-label" class="property-label"><g:message code="phongTro.chiPhi.label" default="Chi Phi" /></span>
					
						<g:each in="${phongTroInstance.chiPhi}" var="c">
						<span class="property-value" aria-labelledby="chiPhi-label"><g:link controller="chiPhi" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:phongTroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${phongTroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
