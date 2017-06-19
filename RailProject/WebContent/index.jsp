<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title> Start Page</title>
    	<link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image: url('${pageContext.request.contextPath}/resources/background2.jpg');">
          <div class="jumbotron text-center">
  <h1>Welcome to Rail Project</h1>
</div>
  
     <div class="container">
     <div class="row">
         <div class="col-sm-4" style="text-align: center">
               <form action="<c:url value="/hrlogin" />">
                    <button style="background-color:#00b33c;" type="submit" class="btn bg-primary">HR</button>
                    </form>
    </div>
    </div>
    </div>
</body>
</html>