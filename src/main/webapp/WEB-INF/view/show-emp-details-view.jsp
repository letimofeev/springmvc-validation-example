<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>

<body>
<%--    <h2>Welcome, ${param.employeeName}</h2>--%>
<h2>Welcome, ${employee.name}</h2>
<br>
<h2>Surname: ${employee.surname}</h2>
<br>
<h2>Salary: ${employee.salary}</h2>
<br>
<h2>Department: ${employee.department}</h2>
<br>
Languages:
<ul>
    <c:forEach var="lang" items="${employee.languages}" >
        <li>${lang}</li>
    </c:forEach>
</ul>

<br>
<h2>Phone number: ${employee.phoneNUmber}</h2>
<br>
<h2>Email: ${employee.email}</h2>
</body>

</html>