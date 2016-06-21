<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
   
<nav class="navbar navbar-inverse navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span> <span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value="/"/>">Eu Voluntário</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="<c:url value="/"/>">Home</a></li>
				
			</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">Log in</a></li>
					<li><a></a></li>
					<li><a data-toggle="modal" href="<c:url value='/cadastro'/>">Cadastrar</a></li>
					<li><a></a></li>
				</ul>
		</div>
	</div>
</nav>