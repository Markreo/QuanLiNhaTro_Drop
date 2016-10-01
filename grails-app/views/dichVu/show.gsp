
<%@ page import="com.quanlinhatro.DichVu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dichVu.label', default: 'DichVu')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-dichVu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-dichVu" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list dichVu">
			
				<g:if test="${dichVuInstance?.tenDichVu}">
				<li class="fieldcontain">
					<span id="tenDichVu-label" class="property-label"><g:message code="dichVu.tenDichVu.label" default="Ten Dich Vu" /></span>
					
						<span class="property-value" aria-labelledby="tenDichVu-label"><g:fieldValue bean="${dichVuInstance}" field="tenDichVu"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dichVuInstance?.gia}">
				<li class="fieldcontain">
					<span id="gia-label" class="property-label"><g:message code="dichVu.gia.label" default="Gia" /></span>
					
						<span class="property-value" aria-labelledby="gia-label"><g:fieldValue bean="${dichVuInstance}" field="gia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dichVuInstance?.dvt}">
				<li class="fieldcontain">
					<span id="dvt-label" class="property-label"><g:message code="dichVu.dvt.label" default="Dvt" /></span>
					
						<span class="property-value" aria-labelledby="dvt-label"><g:fieldValue bean="${dichVuInstance}" field="dvt"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:dichVuInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${dichVuInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
