
<%@ page import="com.quanlinhatro.Khu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'khu.label', default: 'Khu')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-khu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-khu" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="ten" title="${message(code: 'khu.ten.label', default: 'Ten')}" />
					
						<th><g:message code="khu.diaChi.label" default="Dia Chi" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${khuInstanceList}" status="i" var="khuInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${khuInstance.id}">${fieldValue(bean: khuInstance, field: "ten")}</g:link></td>
					
						<td>${fieldValue(bean: khuInstance, field: "diaChi")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${khuInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
