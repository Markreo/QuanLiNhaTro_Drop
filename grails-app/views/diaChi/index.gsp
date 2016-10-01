
<%@ page import="com.quanlinhatro.DiaChi" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'diaChi.label', default: 'DiaChi')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-diaChi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-diaChi" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="diaChi" title="${message(code: 'diaChi.diaChi.label', default: 'Dia Chi')}" />
					
						<g:sortableColumn property="soNha" title="${message(code: 'diaChi.soNha.label', default: 'So Nha')}" />
					
						<g:sortableColumn property="tenDuong" title="${message(code: 'diaChi.tenDuong.label', default: 'Ten Duong')}" />
					
						<g:sortableColumn property="thon" title="${message(code: 'diaChi.thon.label', default: 'Thon')}" />
					
						<g:sortableColumn property="xa" title="${message(code: 'diaChi.xa.label', default: 'Xa')}" />
					
						<g:sortableColumn property="huyen" title="${message(code: 'diaChi.huyen.label', default: 'Huyen')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${diaChiInstanceList}" status="i" var="diaChiInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${diaChiInstance.id}">${fieldValue(bean: diaChiInstance, field: "diaChi")}</g:link></td>
					
						<td>${fieldValue(bean: diaChiInstance, field: "soNha")}</td>
					
						<td>${fieldValue(bean: diaChiInstance, field: "tenDuong")}</td>
					
						<td>${fieldValue(bean: diaChiInstance, field: "thon")}</td>
					
						<td>${fieldValue(bean: diaChiInstance, field: "xa")}</td>
					
						<td>${fieldValue(bean: diaChiInstance, field: "huyen")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${diaChiInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
