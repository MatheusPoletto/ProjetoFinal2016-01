<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Principal</title>

</head>

<body>
	<c:import url="cabecalho.jsp" />
	<div class="wrapper">
		<c:import url="menu.jsp" />

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navigation-example-2">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Meu Perfil</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left">

						</ul>

						<ul class="nav navbar-nav navbar-right">


							<li><a href="#"> Deslogar </a></li>
						</ul>
					</div>
				</div>
			</nav>


			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-8">
							<div class="card">
								<div class="header">
									<h4 class="title">Editar perfil</h4>
									<c:if test="${erroSenha == 'SIM'}">
										</br>
										<div class="alert alert-warning fade in">
											<span class="glyphicon glyphicon-no" aria-hidden="true"></span>
											<a href="#" class="close" data-dismiss="alert"
												aria-label="close">&times;</a> <strong>Ops!</strong> SENHA e
											CONFIRMAR SENHA não são iguais. Sua senha não foi alterada.
										</div>
									</c:if>
								</div>
								<div class="content">
									<form action="<c:url value='/editarVoluntario'/>" method="post">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Nome completo</label> <input type="text"
														class="form-control" name="voluntario.nome"
														value="${voluntario.nome}"
														placeholder="Aqui tem que aparecer o nome" />
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>E-mail</label> <input type="email"
														name="voluntario.email" value="${voluntario.email}"
														class="form-control" placeholder="Aqui o Email" />
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Telefone celular</label> <input type="tel"
														name="voluntario.celular" value="${voluntario.celular}"
														class="form-control" placeholder="Aqui vai o celular" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>Idade</label> <input type="text"
														class="form-control" name="idade" value="${idade}"
														disabled />
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Senha</label> <input type="password"
														name="usuario.senha" value="${usuario.senha}"
														class="form-control" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>Confirmar senha</label> <input type="password"
														name="repete" value="" class="form-control">
												</div>
											</div>
										</div>
										<button type="submit" class="btn btn-primary pull-right">SALVAR
											ALTERAÇÕES</button>
										<div class="clearfix"></div>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card card-user">
								<div class="image">
									<img
										src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400"
										alt="..." />
								</div>
								<div class="content">
									<div class="author">


										<c:choose>
											<c:when test="${imagem == 'AAAAAAAAAAAAAAAAAAAAAAAAAAA='}">
   												<a href="#"> <img class="avatar border-gray"
												src="img/def-user.png" width="150" height="100" alt="..." />
											</c:when>

											<c:otherwise>
     											<a href="#"> <img class="avatar border-gray"
												src="data:image/jpeg;base64," width="100"
												height="100" alt="..." />
											</c:otherwise>
										</c:choose>
										
									
										<h4 class="title">
											${voluntario.nome}<br /> <small>${usuario.login}</small>
										</h4>
										</a>
									</div>

								</div>

							</div>
						</div>

						<div class="col-sm-12 col-md-4">

							<form action="<c:url value="/salvarImagemVoluntario/imagem"/>"
								method="POST" enctype="multipart/form-data">
								<fieldset>
									<legend>Upload de Imagem</legend>
									<input type="file" name="imagem" />


									<button type="submit">Enviar</button>
								</fieldset>
							</form>
						</div>

					</div>
				</div>
			</div>


			<footer class="footer">
				<div class="container-fluid">

					<p class="copyright pull-right">&copy; 2016 EuVoluntário</p>
				</div>
			</footer>

		</div>
	</div>


</body>

<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/bootstrap-checkbox-radio-switch.js"></script>
<script src="js/chartist.min.js"></script>
<script src="js/bootstrap-notify.js"></script>
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="js/light-bootstrap-dashboard.js"></script>
<script src="js/demo.js"></script>

</html>
