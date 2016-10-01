
<%@ page import="com.quanlinhatro.ChiPhi" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'chiPhi.label', default: 'ChiPhi')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-chiPhi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-chiPhi" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="chiPhi.dichVu.label" default="Dich Vu" /></th>
					
						<g:sortableColumn property="donVi" title="${message(code: 'chiPhi.donVi.label', default: 'Don Vi')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${chiPhiInstanceList}" status="i" var="chiPhiInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${chiPhiInstance.id}">${fieldValue(bean: chiPhiInstance, field: "dichVu")}</g:link></td>
					
						<td>${fieldValue(bean: chiPhiInstance, field: "donVi")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${chiPhiInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
