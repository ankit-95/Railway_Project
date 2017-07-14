<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logged In</title>

<link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet" type="text/css" />
    	<link href="${pageContext.request.contextPath}/resources/bootstrap.css" rel="stylesheet" type="text/css" />
    	<link href="${pageContext.request.contextPath}/resources/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    	  <script src="${pageContext.request.contextPath}/resources/bootstrap.min.js"></script>
    	  <script src="${pageContext.request.contextPath}/resources/jquery.min.js"></script>
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
   <div class="row">
   <div class="col-sm-2">     
        <form:form action="empdisp" method="get">
        <span>
            <button class="btn btn-info" class="col-sm-6" style="margin-left: 100px;" >Employee</button>
        </span> 
   </form:form> 
   </div>
   <div class="col-sm-4"> 
    <form:form action="perfEmp" method="get">
        <span>
            <button class="btn btn-info" class="col-sm-6" style="margin-left: 100px;" >Enter Employee Performance</button>
        </span> 
   </form:form>
   </div>
        <div class="col-sm-6"> 
    	<div class="dropdown">
    <button class="btn btn-info dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Projects
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li role="presentation"><a role="menuitem" tabindex="-1" href='<c:url value="/existproj"/>'>Existing Projects</a></li>
      <li role="presentation" class="divider"></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href='<c:url value="/addproj"/>'>Add New Project</a></li>
    </ul>
  </div>
   </div>
        </div> 
   <br>
   <br>
   
   <c:choose>
      <c:when test="${msg=='Employee'}">
             <table style="background-color: white;" class="table table-hover">
                     <tr>    
                     <td width="15%">Name</td>
                 <td width="15%">Email</td>
        <td width="15%">Address</td>
        <td width="15%">City</td>
        <td width="15%">Comment</td>
        <td width="15%">Phone</td>
        </tr>
                     <c:forEach var="item" items="${Emp}">
                         <tr>
                             <td>
                      <c:out value="${item.first_name}"/>
                             </td>
                             <td>
                              <c:out value="${item.email}"/>
                             </td>
                             <td>
                              <c:out value="${item.address}"/>
                             </td>
                             <td>
                              <c:out value="${item.city}"/>
                             </td>
                             <td>
                              <c:out value="${item.comment}"/>
                             </td>
                             <td>
                              <c:out value="${item.phone}"/>
                             </td>
                         </tr>
                     </c:forEach>
                 
                 </table>
             </c:when>
        <c:when test="${msg=='EmployeeProject'}">
             <table style="background-color: white;" class="table table-hover">
                     <tr>    
                     <td width="15%">Project Name</td>
                 <td width="15%">Project Budget</td>
        <td width="15%">Number of Employees</td>
        <td width="15%">Employee Id's</td>
        </tr>
                     <c:forEach var="item" items="${empproj}">
                         <tr>
                             <td>
                      <c:out value="${item.proj_name}"/>
                             </td>
                             <td>
                              <c:out value="${item.proj_budget}"/>
                             </td>
                             <td>
                              <c:out value="${item.no_of_emp}"/>
                             </td>
                             <td>
                              <c:out value="${item.empid}"/>
                             </td>
                           </tr>
                     </c:forEach>
                 
                 </table>
             </c:when>
       
             </c:choose>
      </body>
</html>