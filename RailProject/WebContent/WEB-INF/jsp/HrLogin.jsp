<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HR Login</title>
    	<link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body class="container" style="background-image: url('${pageContext.request.contextPath}/resources/background2.jpg');background-repeat: no-repeat;background-size: 100%;">
        <form:form action="hrlogin" commandName="hruser" method="post" autocomplete="off">
         <div class="form-group" class="col-sm-6" style="margin-top:200px;margin-left:450px;margin-right:400px">
                <label>Enter the Username : </label>
            <form:input path="uname" cssClass="form-control"/>
        </div>
        <div class="form-group" class="col-sm-6" style="margin-left:450px;margin-right:400px">
            <label>Enter the Password : </label>
            <form:password path="pwd" cssClass="form-control"/>
        </div>
        <span>
            <button class="btn btn-info" class="col-sm-6" style="margin-left: 450px;" >Login</button>
        </span> 
   </form:form>
</body>
</html>