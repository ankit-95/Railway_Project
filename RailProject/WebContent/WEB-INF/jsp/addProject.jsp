<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Project</title>
	<link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet" type="text/css" />
    	<link href="${pageContext.request.contextPath}/resources/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    	
    <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
submitforms = function(){
    document.getElementById("sub1").submit();
    document.getElementById("sub2").submit();
}</script>

</head>
<body style="background-color: #CFD8DC;">
  <h3 class="well">Add Project</h3>
    <form:form id="sub1" action="addproj" commandName="empproj" method="post" autocomplete="off">
    <div class="form-group">
        <label class="col-md-4 control-label">Project Name : </label>
        <div class="col-md-6  inputGroupContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input path="proj_name" placeholder="Project Name" cssClass="form-control"/>
          </div>
        </div>
      </div>
      <br>
      <br>
    <div class="form-group">
        <label class="col-md-4 control-label">Project Budget : </label>
        <div class="col-md-6  inputGroupContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input path="proj_budget" placeholder="Project Budget" cssClass="form-control"/>
          </div>
        </div>
     </div>
      <br>
      <br>
     <div class="form-group">
        <label class="col-md-4 control-label">Number of Employees Required : </label>
        <div class="col-md-6  inputGroupContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input path="no_of_emp" placeholder="Number of Employees" cssClass="form-control"/>
          </div>
        </div>
     </div>
          <br>
      <br>
   <div class="form-group">
        <label class="col-md-4 control-label">Available Employees : </label>
    <table style="background-color: white;" class="table table-hover">
                     <tr>    
                     <td width="15%">Employee Id</td>
                 <td width="15%">Employee Name</td>
                 <td width="15%">Selection</td>
                         </tr>
                     <c:forEach var="item" items="${empname}">
                         <tr>
                             <td>
                      <c:out value="${item.empid}"/>
                             </td>
                             <td>
                              <c:out value="${item.first_name}"/>
                             </td>
                             <td>
                             <form:form id="sub2" action="empselect" commandName="empselect" method="get">
                         <form:checkbox path="select" value="${item.empid}"/>
                         </form:form>
                         </td>       
                                   </tr>
                     </c:forEach>
                 </table> 
                 </div>
      <br>
      <br>
    </form:form>
                  <div class="form-group">
        <label class="col-md-4 control-label"></label>
        <div class="col-md-4">
          <input type="button" class="btn btn-warning" onclick="submitforms()" value="Add Project"></button>
        </div>
      </div>
</body>
</html>
