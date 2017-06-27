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
        
        <form:form action="empdisp" method="get">
        <span>
            <button class="btn btn-info" class="col-sm-6" style="margin-left: 100px;" >Employee</button>
        </span> 
   </form:form> 
    <form:form action="perfEmp" method="get">
        <span>
            <button class="btn btn-info" class="col-sm-6" style="margin-left: 100px;" >Enter Employee Performance</button>
        </span> 
   </form:form> 
   
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
             </c:choose>
</body>
</html>