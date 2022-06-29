<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html;charset=cp1251" %>
<!DOCTYPE html>
<html>

<body>

<h2>Enter your details</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee" method="post">
    Name <form:input path="name" />
    <form:errors path="name" />
    <br>
    <br>
    Surname <form:input path="surname" />
    <form:errors path="surname" />
    <br>
    <br>
    Salary <form:input path="salary" />
    <form:errors path="salary" />
    <br>
    <br>
    Department <form:select path="department">
    <form:options items="${employee.departments}" />
    </form:select>
    <br>
    <br>
    Car? Audi <form:radiobuttons path="car" items="${employee.cars}" />
    <br>
    <br>
    Languages? <form:checkboxes path="languages" items="${employee.languagesMap}" />
    <br>
    <br>
    Phone number <form:input path="phoneNUmber" />
    <form:errors path="phoneNUmber" />
    <br>
    <br>
    Email <form:input path="email" />
    <form:errors path="email" />
    <br>
    <br>

    <input type="submit" value="OK">
</form:form>

</body>

</html>