<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" >
</head>

<body>
	
  ${variable} ${linkTo[IndexController].index}

  
	
	
		<div class="container col-md-12">
		<h1>P�gina de INDEX....</h1>
		
		<form action="<c:url value='/cadastrar'/>" method="get">
		<input type="submit" value="Ir para a tela de login"/>
		</form>
		
</div>
</body>
</html>