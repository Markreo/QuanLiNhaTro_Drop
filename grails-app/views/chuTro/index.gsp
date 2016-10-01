
<%@ page import="com.quanlinhatro.ChuTro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'chuTro.label', default: 'ChuTro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-chuTro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-chuTro" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="hoTenDem" title="${message(code: 'chuTro.hoTenDem.label', default: 'Ho Ten Dem')}" />
					
						<g:sortableColumn property="ten" title="${message(code: 'chuTro.ten.label', default: 'Ten')}" />
					
						<g:sortableColumn property="ngaySinh" title="${message(code: 'chuTro.ngaySinh.label', default: 'Ngay Sinh')}" />
					
						<th><g:message code="chuTro.diaChi.label" default="Dia Chi" /></th>
					
						<g:sortableColumn property="soDienThoai" title="${message(code: 'chuTro.soDienThoai.label', default: 'So Dien Thoai')}" />
					
						<th><g:message code="chuTro.taiKhoan.label" default="Tai Khoan" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${chuTroInstanceList}" status="i" var="chuTroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${chuTroInstance.id}">${fieldValue(bean: chuTroInstance, field: "hoTenDem")}</g:link></td>
					
						<td>${fieldValue(bean: chuTroInstance, field: "ten")}</td>
					
						<td><g:formatDate date="${chuTroInstance.ngaySinh}" /></td>
					
						<td>${fieldValue(bean: chuTroInstance, field: "diaChi")}</td>
					
						<td>${fieldValue(bean: chuTroInstance, field: "soDienThoai")}</td>
					
						<td>${fieldValue(bean: chuTroInstance, field: "taiKhoan")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${chuTroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
