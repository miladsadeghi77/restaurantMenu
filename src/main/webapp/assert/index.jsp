<%@ page import="ir.maktab.model.Food" %>
<%@ page import="java.util.List" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title>New Customer</title>
</head>
<body>
<div align="center">
    <h3><a href="menu/all">index</a></h3>
    <h3><a href="menu/new">New food</a></h3>
    <table border="2" cellpadding="10">
        <tr>
            <th>id</th>
            <th>name</th>
            <th>description</th>
        </tr>
        <c:forEach items="${foodList}" var="food">
            <tr>
                <td>${food.id}</td>
                <td>${food.nameFood}</td>
                <td>${food.descriptionFood}</td>
                <td>
                    <a href="/edit?id=${food.id}">Edit</a>
                    &nbsp;&nbsp;&nbsp;
                    <a href="/delete?id=${food.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>

<%--    <table border="2" cellpadding="10">--%>
<%--        <tr>--%>
<%--            <th>id</th>--%>
<%--            <th>name</th>--%>
<%--            <th>description</th>--%>
<%--        </tr>--%>
<%--        <% List<Food> foods = (List<Food>) request.getAttribute("foodList");--%>
<%--            for (Food food:--%>
<%--                    foods) {%>--%>
<%--        <tr>--%>
<%--            <td><%=food.getId()%></td>--%>
<%--            <td><%=food.getNameFood()%></td>--%>
<%--            <td><%=food.getDescriptionFood()%></td>--%>
<%--        </tr>--%>
<%--        <%}%>--%>
<%--    </table>--%>