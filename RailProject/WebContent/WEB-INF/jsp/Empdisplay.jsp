<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logged In</title>
    	<link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image: url('${pageContext.request.contextPath}/resources/background2.jpg');background-repeat: no-repeat;background-size: 100%;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">RailProject</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.jsp">HOME</a></li>
     </ul>
  </div>
</nav> 
      <form:form action="empperf" commandName="empuser" method="get">
        <form:hidden path="email" value="${email}" />
        <span>
              <button class="btn btn-info" class="col-sm-6" style="margin-left: 100px;" >Get Performance Report</button>
        </span> 
   </form:form> 
  </body>
</html>