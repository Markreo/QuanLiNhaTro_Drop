
<%@ page import="com.quanlinhatro.PhongTro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phongTro.label', default: 'PhongTro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-phongTro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-phongTro" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tenPhong" title="${message(code: 'phongTro.tenPhong.label', default: 'Ten Phong')}" />
					
						<g:sortableColumn property="ghiChu" title="${message(code: 'phongTro.ghiChu.label', default: 'Ghi Chu')}" />
					
						<th><g:message code="phongTro.khu.label" default="Khu" /></th>
					
						<g:sortableColumn property="tinhTrang" title="${message(code: 'phongTro.tinhTrang.label', default: 'Tinh Trang')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${phongTroInstanceList}" status="i" var="phongTroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${phongTroInstance.id}">${fieldValue(bean: phongTroInstance, field: "tenPhong")}</g:link></td>
					
						<td>${fieldValue(bean: phongTroInstance, field: "ghiChu")}</td>
					
						<td>${fieldValue(bean: phongTroInstance, field: "khu")}</td>
					
						<td>${fieldValue(bean: phongTroInstance, field: "tinhTrang")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${phongTroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
