
<%@ page import="com.quanlinhatro.KhachThue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'khachThue.label', default: 'KhachThue')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-khachThue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-khachThue" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="hoTenDem" title="${message(code: 'khachThue.hoTenDem.label', default: 'Ho Ten Dem')}" />
					
						<g:sortableColumn property="ten" title="${message(code: 'khachThue.ten.label', default: 'Ten')}" />
					
						<g:sortableColumn property="ngaySinh" title="${message(code: 'khachThue.ngaySinh.label', default: 'Ngay Sinh')}" />
					
						<th><g:message code="khachThue.diaChi.label" default="Dia Chi" /></th>
					
						<g:sortableColumn property="soDienThoai" title="${message(code: 'khachThue.soDienThoai.label', default: 'So Dien Thoai')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${khachThueInstanceList}" status="i" var="khachThueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${khachThueInstance.id}">${fieldValue(bean: khachThueInstance, field: "hoTenDem")}</g:link></td>
					
						<td>${fieldValue(bean: khachThueInstance, field: "ten")}</td>
					
						<td><g:formatDate date="${khachThueInstance.ngaySinh}" /></td>
					
						<td>${fieldValue(bean: khachThueInstance, field: "diaChi")}</td>
					
						<td>${fieldValue(bean: khachThueInstance, field: "soDienThoai")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${khachThueInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
