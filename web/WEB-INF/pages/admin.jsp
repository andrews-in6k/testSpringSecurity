<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: employee
  Date: 11/10/15
  Time: 4:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h1>Title : ${title}</h1>
<h1>Message : ${message}</h1>

<c:url value="/logout" var="logoutUrl" />

<!-- csrt for log out-->
<form action="${logoutUrl}" method="post" id="logoutForm">
  <input type="hidden"
         name="${_csrf.parameterName}"
         value="${_csrf.token}" />
</form>

<script>
  function formSubmit() {
    document.getElementById("logoutForm").submit();
  }
</script>

<c:if test="${pageContext.request.userPrincipal.name != null}">
  <h2>
    Welcome : ${pageContext.request.userPrincipal.name} | <a
          href="javascript:formSubmit()"> Logout</a>
  </h2>
</c:if>

<sec:authorize access="isRememberMe()">
    <h2># This user is login by "Remember Me Cookies".</h2>
</sec:authorize>

<sec:authorize access="isFullyAuthenticated()">
    <h2># This user is login by username / password.</h2>
</sec:authorize>
</body>
</html>
