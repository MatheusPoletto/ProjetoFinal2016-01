<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html lang="pt-br">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style.css" media="screen"
	title="no title" charset="utf-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<script src="js/ie-emulation-modes-warning.js"></script>
<link href="css/signin.css" rel="stylesheet">
<script src="js/login-register.js" type="text/javascript"></script>
<script src="jquery/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<link href="css/login-register.css" rel="stylesheet" />
<link href="css/light-bootstrap-dashboard.css" rel="stylesheet" />
<link rel="stylesheet" href="css/cadastro.css">
</head>

<body>



	

	<div class="content"></div>
	<!-- Static navbar -->
	<nav class="navbar navbar-inverse navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Eu Voluntário</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.php">Home</a></li>
				<li><a href="#">Contato</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a data-toggle="modal" href="javascript:void(0)"
					onclick="openLoginModal();">Log in</a></li>
				<li><a></a></li>

			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>


	<div class="content container-fluid  card col-sm-10 col-sm-offset-1">

		<div class="row content">
			<div>
				<div class="col-sm-12">



					<div class="col-sm-12">
						<h1 align="center">Contato</h1>
						<br>
						<p class="category">Duvidas, reclamações ou elogios? Por favor
							nós envie uma mensagem através do formulario abaixo.</p>
					</div>



					<div class="content">
						<div class="container-fluid">
							<div class="row">
								<div class="col-sm-12">
									<div>
										<div class="header"></div>
										<div class="content">
											<form>
												<div class="row">
													<div class="col-xs-12 col-md-6">
														<div class="form-group">
															<label>Nome Completo</label> <input type="text"
																class="form-control"
																placeholder="Por favor informe o seu nome...">
														</div>
													</div>

													<div class="col-xs-12 col-md-6">
														<div class="form-group">
															<label>Email address</label> <input type="email"
																class="form-control"
																placeholder="Por favor informe o seu email...">
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-sm-12">
														<div class="form-group">
															<label>Mensagem</label>
															<textarea name="name" rows="3" cols="40"
																class="form-control"
																placeholder="Por Favor escreva aqui a sua mensagem..."></textarea>
														</div>
													</div>

												</div>

												<button type="submit"
													class="btn btn-info btn-fill pull-right">Enviar
													Mensagem</button>
												<div class="clearfix"></div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>




				</div>


			</div>
		</div>
	</div>








	<div class="container">
		<div class="row">





			<div class="modal fade login" id="loginModal">
				<div class="modal-dialog login animated">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<br>
							<h2 class="" align="center">Login:</h2>
						</div>
						<div class="modal-body">
							<div class="box">
								<div class="content">

									<div class="error"></div>
									<div class="form loginBox">
										<form method="post" action="/login" accept-charset="UTF-8">
											<input id="email" class="form-control" type="text"
												placeholder="Email" name="email"> <input
												id="password" class="form-control" type="password"
												placeholder="Password" name="password"> <input
												class="btn btn-default btn-login" type="button"
												value="Login" onclick="">
										</form>
									</div>
								</div>
							</div>
							<div class="box">
								<div class="content registerBox" style="display: none;">
									<div class="form">
										<form method="post" html="{:multipart=>true}"
											data-remote="true" action="/register" accept-charset="UTF-8">
											<input id="email" class="form-control" type="text"
												placeholder="Email" name="email"> <input
												id="password" class="form-control" type="password"
												placeholder="Password" name="password"> <input
												id="password_confirmation" class="form-control"
												type="password" placeholder="Repeat Password"
												name="password_confirmation"> <input
												class="btn btn-default btn-register" type="submit"
												value="Create account" name="commit">
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<div class="forgot login-footer">
								<span> <a href="">Deseja criar uma conta?</a>
								</span>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer col-sm-10 col-sm-offset-1">
	<div class="container-fluid">
		<nav class="pull-left">
		<ul>
			<li><a href="#"> Home </a></li>

		</ul>
		</nav>
		<p class="copyright pull-right">&copy; 2016 EuVoluntário</p>
	</div>
	</footer>
<body>
</html>
