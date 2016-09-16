<%--
  Created by IntelliJ IDEA.
  User: markreo
  Date: 9/14/16
  Time: 10:00 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Danh sach phong tro</title>
</head>

<body>
<table>
    <thead>
    <th>
        <td>id</td>
        <td>ten phong</td>
        <td>so phong</td>
        <td>ghi chu</td>
    </th>
    </thead>
    <tbody>
    <g:each in="${phongtros}" var="phongtro">
        <tr>
            <td>${phongtro.id}</td>
            <td>${phongtro.tenPhong}</td>
            <td>${phongtro.soPhong}</td>
            <td>${phongtro.ghiChu}</td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>