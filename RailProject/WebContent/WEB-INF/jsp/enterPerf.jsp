<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter Performance</title>
<link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet" type="text/css" />
    	<link href="${pageContext.request.contextPath}/resources/bootstrap.css" rel="stylesheet" type="text/css" />
    	<link href="${pageContext.request.contextPath}/resources/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    	
</head>
<body style="background-image: url('${pageContext.request.contextPath}/resources/background2.jpg');background-repeat: no-repeat;background-size: 100%;">
          <div class="jumbotron text-center">
  <h1>Enter the Performance Details</h1>
</div>
<div class="container">
<div class="col-lg-9">
<form:form class="form-vertical" action="perfEmp" commandName="empperf" method="post" autocomplete="off">
 <%
List<Integer> list1 = (List<Integer>)request.getAttribute("empid");
 %>
 <div class="form-group">
        <label style="color:#b366ff;" class="col-md-4 control-label">Employee Id :</label>
		<div class="col-md-6 selectContainer">
		<form:select path="empid" class="form-control selectpicker">
	<%
    for(Integer list:list1)  
	{ %>
	<form:option value="<%=list%>"><%=list%></form:option>
		<% } 
		%>
		</form:select>
	</div>
	</div>
	<br>
	<br>
	<br>
	 <div class="form-group">
        <label style="color:#b366ff;" class="col-md-4 control-label">Performance Year</label>
           <div class="col-md-6  inputGroupContainer">
            <form:input path="per_year" cssClass="form-control" type="text"/>
        </div>
      </div>
      <!-- Text input-->
    <br>
	<br>
	  
      <div class="form-group">
        <label  style="color:#b366ff;" class="col-md-4 control-label" >Sales</label>
           <div class="col-md-6  inputGroupContainer">
            <form:input path="sales" cssClass="form-control" type="text"/>
        </div>
        </div>
        <div class="form-group">
        <label class="col-md-4 control-label"></label>
        <div class="col-md-4">
          <button type="submit" class="btn btn-warning" >Send <span class="glyphicon glyphicon-send"></span></button>
        </div>
      </div>
</form:form>
</div>
</div>
</body>
</html>