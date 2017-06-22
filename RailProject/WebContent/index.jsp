<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title> Start Page</title>
    	<link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet" type="text/css" />
    	<link href="${pageContext.request.contextPath}/resources/bootstrap.css" rel="stylesheet" type="text/css" />
    	<link href="${pageContext.request.contextPath}/resources/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    	  <script src="${pageContext.request.contextPath}/resources/bootstrap.min.js"></script>
    	  <script src="${pageContext.request.contextPath}/resources/jquery.min.js"></script>
    	  <style type="text/css">
    	  footer {
			width: 100%;
			max-height: 20%;
			background: #262626;
			float: bottom;
			margin: 9.5% 2% 2% 0;
			}
    	  </style>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/resources/background2.jpg');background-repeat: no-repeat;background-size: 100%;">
          <div class="jumbotron text-center">
  <h1>Welcome to Rail Project</h1>
</div>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">RailProject</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="<c:url value="/hrlogin" />">HR</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
       <li><a href="empreg.jsp"> <span class="glyphicon glyphicon-user"></span> Register</a></li>
      <li><a href=""><span class="glyphicon glyphicon-user"></span>  Login</a></li>
    </ul>
  </div>
</nav>
   <div class="panel panel-success">
      <div class="panel-heading">About the Company</div>
      <div class="panel-body">RailProject is an Indian multinational information technology (IT) service, consulting and business solutions company Headquartered in Mumbai, Maharashtra.It is a subsidiary of the Reliance Group and operates in 46 countries.
      It is one of the largest Indian companies by market capitalization ($80 billion).It is now placed among the Big 4 most  valuable IT services brands worldwide.It alone generates 70% dividends of its parent company, Reliance.In 2015, RailProject is ranked 64th overall in the Forbes World's Most Innovative Companies ranking, making it both the highest-ranked IT services company and the top Indian company.It is the world's 10th largest IT services provider by revenue.As of December 2015, it is ranked 10th on the Fortune India 500 list.</div>
    </div>
    <footer>
<address style="color:white;"><center>&copy; Coyright 2016 All Rights Reserved @www.rail-project.com</center></address>
</footer>
  </body>
</html>