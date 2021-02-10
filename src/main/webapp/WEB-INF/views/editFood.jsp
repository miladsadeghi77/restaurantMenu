<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Food</title>
</head>
<body >
<div align="center">
<%--@elvariable id="food" type="com.model.Food"--%>
<form:form method="post" action="save" modelAttribute="food">
    ${food.id}
    <label>id:</label> <form:hidden path="id" /> <br>
    <form:input name="namefood" type="text" placeholder="name food" path="nameFood" /><br>
    <form:input name="descriptionFood" type="text" placeholder="descriptionFood" path="descriptionFood" /><br>
    <input type="submit" value="Edit Food">
</form:form>
</div>
</body>
</html>
