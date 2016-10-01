
<%@ page import="com.quanlinhatro.DiaChi" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'diaChi.label', default: 'DiaChi')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-diaChi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-diaChi" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list diaChi">
			
				<g:if test="${diaChiInstance?.diaChi}">
				<li class="fieldcontain">
					<span id="diaChi-label" class="property-label"><g:message code="diaChi.diaChi.label" default="Dia Chi" /></span>
					
						<span class="property-value" aria-labelledby="diaChi-label"><g:fieldValue bean="${diaChiInstance}" field="diaChi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diaChiInstance?.soNha}">
				<li class="fieldcontain">
					<span id="soNha-label" class="property-label"><g:message code="diaChi.soNha.label" default="So Nha" /></span>
					
						<span class="property-value" aria-labelledby="soNha-label"><g:fieldValue bean="${diaChiInstance}" field="soNha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diaChiInstance?.tenDuong}">
				<li class="fieldcontain">
					<span id="tenDuong-label" class="property-label"><g:message code="diaChi.tenDuong.label" default="Ten Duong" /></span>
					
						<span class="property-value" aria-labelledby="tenDuong-label"><g:fieldValue bean="${diaChiInstance}" field="tenDuong"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diaChiInstance?.thon}">
				<li class="fieldcontain">
					<span id="thon-label" class="property-label"><g:message code="diaChi.thon.label" default="Thon" /></span>
					
						<span class="property-value" aria-labelledby="thon-label"><g:fieldValue bean="${diaChiInstance}" field="thon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diaChiInstance?.xa}">
				<li class="fieldcontain">
					<span id="xa-label" class="property-label"><g:message code="diaChi.xa.label" default="Xa" /></span>
					
						<span class="property-value" aria-labelledby="xa-label"><g:fieldValue bean="${diaChiInstance}" field="xa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diaChiInstance?.huyen}">
				<li class="fieldcontain">
					<span id="huyen-label" class="property-label"><g:message code="diaChi.huyen.label" default="Huyen" /></span>
					
						<span class="property-value" aria-labelledby="huyen-label"><g:fieldValue bean="${diaChiInstance}" field="huyen"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diaChiInstance?.tinh}">
				<li class="fieldcontain">
					<span id="tinh-label" class="property-label"><g:message code="diaChi.tinh.label" default="Tinh" /></span>
					
						<span class="property-value" aria-labelledby="tinh-label"><g:fieldValue bean="${diaChiInstance}" field="tinh"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:diaChiInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${diaChiInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
