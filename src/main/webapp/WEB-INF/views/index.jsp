<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java"  contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="../assert/styles/index.css">
    <title>restaurant menu</title>
</head>
<body>

<div align="center">
    <h3><a href="\">index</a></h3>
    <h3><a href="new">New food</a></h3>
    <table border="2" cellpadding="10">
        <tr>
            <th>id</th>
            <th>name</th>
            <th>description</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${foodlist}" var="food">
            <tr>
                <td>${food.id}</td>
                <td>${food.nameFood}</td>
                <td>${food.descriptionFood}</td>
                <td>
                    <a href="edit?id=${food.id}">Edit</a>
                    &nbsp;&nbsp;&nbsp;
                    <a href="delete?id=${food.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>

    </table>

</div>
</body>
</html>
