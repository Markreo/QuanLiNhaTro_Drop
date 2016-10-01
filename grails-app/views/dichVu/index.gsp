
<%@ page import="com.quanlinhatro.DichVu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dichVu.label', default: 'DichVu')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-dichVu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-dichVu" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tenDichVu" title="${message(code: 'dichVu.tenDichVu.label', default: 'Ten Dich Vu')}" />
					
						<g:sortableColumn property="gia" title="${message(code: 'dichVu.gia.label', default: 'Gia')}" />
					
						<g:sortableColumn property="dvt" title="${message(code: 'dichVu.dvt.label', default: 'Dvt')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dichVuInstanceList}" status="i" var="dichVuInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${dichVuInstance.id}">${fieldValue(bean: dichVuInstance, field: "tenDichVu")}</g:link></td>
					
						<td>${fieldValue(bean: dichVuInstance, field: "gia")}</td>
					
						<td>${fieldValue(bean: dichVuInstance, field: "dvt")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${dichVuInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
