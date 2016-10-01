
<%@ page import="com.quanlinhatro.ChiPhi" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'chiPhi.label', default: 'ChiPhi')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-chiPhi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-chiPhi" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list chiPhi">
			
				<g:if test="${chiPhiInstance?.dichVu}">
				<li class="fieldcontain">
					<span id="dichVu-label" class="property-label"><g:message code="chiPhi.dichVu.label" default="Dich Vu" /></span>
					
						<span class="property-value" aria-labelledby="dichVu-label"><g:link controller="dichVu" action="show" id="${chiPhiInstance?.dichVu?.id}">${chiPhiInstance?.dichVu?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${chiPhiInstance?.donVi}">
				<li class="fieldcontain">
					<span id="donVi-label" class="property-label"><g:message code="chiPhi.donVi.label" default="Don Vi" /></span>
					
						<span class="property-value" aria-labelledby="donVi-label"><g:fieldValue bean="${chiPhiInstance}" field="donVi"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:chiPhiInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${chiPhiInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
