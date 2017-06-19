<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HR Login</title>
    	<link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image: url('${pageContext.request.contextPath}/resources/background2.jpg');">
        <form:form action="hrlogin" commandName="hruser" method="post" style="margin-left:100px;margin-right:250px">
         <div class="form-group" style="margin-left:300px;margin-right:300px">
                <label>Enter the Username : </label> <font style="color: red;"></font>
            <form:input path="uname" cssClass="form-control"/>
        </div>
        <div class="form-group" style="margin-left:300px;margin-right:300px">
            <label>Enter the Password : </label> <font style="color: red"></font>
            <form:password path="pwd" cssClass="form-control"/>
        </div>
        <span>
            <button class="btn btn-info" style="margin-left: 500px;" >Login</button>
        </span> 
   </form:form>
</body>
</html>