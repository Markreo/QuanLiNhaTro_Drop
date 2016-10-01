
<%@ page import="com.quanlinhatro.Khu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'khu.label', default: 'Khu')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-khu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-khu" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list khu">
			
				<g:if test="${khuInstance?.ten}">
				<li class="fieldcontain">
					<span id="ten-label" class="property-label"><g:message code="khu.ten.label" default="Ten" /></span>
					
						<span class="property-value" aria-labelledby="ten-label"><g:fieldValue bean="${khuInstance}" field="ten"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${khuInstance?.diaChi}">
				<li class="fieldcontain">
					<span id="diaChi-label" class="property-label"><g:message code="khu.diaChi.label" default="Dia Chi" /></span>
					
						<span class="property-value" aria-labelledby="diaChi-label"><g:link controller="diaChi" action="show" id="${khuInstance?.diaChi?.id}">${khuInstance?.diaChi?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:khuInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${khuInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
