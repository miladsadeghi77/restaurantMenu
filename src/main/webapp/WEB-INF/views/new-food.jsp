<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Food</title>
</head>
<body>
<%--@elvariable id="food" type="com.model.Food"--%>
<form:form method="post" action="save" modelAttribute="food">
    <form:input name="namefood" type="text" placeholder="name food" path="nameFood" />
    <form:input name="descriptionFood" type="text" placeholder="descriptionFood" path="descriptionFood" />
    <input type="submit" value="Add Food">
</form:form>
</body>
</html>
