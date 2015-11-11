<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: employee
  Date: 11/11/15
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h1>HTTP Status 403 - Access is denied</h1>

<c:choose>
  <c:when test="${empty username}">
    <h2>You do not have permission to access this page!</h2>
  </c:when>
  <c:otherwise>
    <h2>Username : ${username} <br/>
      You do not have permission to access this page!</h2>
  </c:otherwise>
</c:choose>

</body>
</html>
