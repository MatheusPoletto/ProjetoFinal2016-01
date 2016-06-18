<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<link href="css/light-bootstrap-dashboard.css" rel="stylesheet" />
<link href="css/signin.css" rel="stylesheet">
<link rel="stylesheet" href="css/cadastro.css">
<title>Eu voluntário</title>

<c:import url="cabecalho.jsp" />
</head>

<body>
	<div class="content"></div>
	<c:import url="menu.jsp" />
	<div class="content container-fluid  card col-sm-10 col-sm-offset-1">
		<div class="row content">
			<div>
				<div class="col-sm-12">
					<div class="col-sm-12">
						<h1 align="center">Contato</h1>
						<br>
						<p class="category">Duvidas, reclamações ou elogios? Por favor
							nos envie uma mensagem através do formulario abaixo.</p>
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

	<footer class="footer col-sm-8 col-sm-offset-2">
		<div class="container-fluid">
		
	<c:import url="rodape.jsp" />