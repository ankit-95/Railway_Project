<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Added!!</title>
<link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet" type="text/css" />
    	<link href="${pageContext.request.contextPath}/resources/bootstrap.css" rel="stylesheet" type="text/css" />
    	<link href="${pageContext.request.contextPath}/resources/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    	
</head>

<body>
         <div class="jumbotron text-center">
  <h2>Project Added Successfully!!!  <a href="index.jsp">HOME PAGE..</a>
</h2>
</div>
 <c:forEach var="i" items="${emp.select}" >
<c:out value="${i}"></c:out><br>
</c:forEach>
</body>
</html>