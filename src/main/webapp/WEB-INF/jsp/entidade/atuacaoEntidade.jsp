
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Cadastrar vaga</title>
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
						<a class="navbar-brand" href="#">Minhas vagas</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left">



						</ul>

						<ul class="nav navbar-nav navbar-right">



							<li><a href="<c:url value='/cadastro'/>">Deslogar</a></li>
						</ul>
					</div>
				</div>
			</nav>


			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title">Vagas em aberto</h4>
									<p class="category">Essas s�o as vagas que voc� criou e
										ainda n�o foram completadas</p>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover table-striped">
										<thead>
											<th>Nome</th>
											<th>ONG</th>
											<th>Cidade</th>
											<th>Estado</th>
											<th>Presencial</th>
											<th>Descri��o</th>
										</thead>
										<tbody>
											<c:forEach items="${vagaview}" var="vaga">
												<tr>
													<td>${vaga.nomeVaga}</td>
													<td>${entidade.nomeEntidade}</td>
													<td>${vaga.cidade}</td>
													<td>${vaga.estado}</td>
													<td>${vaga.presencial}</td>
													<td>${vaga.descricao}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

								</div>
							</div>
						</div>


						<div class="col-md-12">
							<div class="card card-plain">
								<div class="header">
									<h4 class="title">Atua��es confirmadas</h4>
									<p class="category">Aqui est�o as vagas que tiveram
										volunt�rio inscritos</p>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover">
										<thead>
											<th>Nome</th>
											<th>Cidade</th>
											<th>Estado</th>
											<th>Presencial</th>
											<th>Descri��o</th>
										</thead>
										<tbody>
											<c:forEach items="${atuacoesConcluidas}" var="atuacao">
												<tr>
													<td>${atuacao.vaga.nomeVaga}</td>
													<td>${atuacao.vaga.cidade}</td>
													<td>${atuacao.vaga.estado}</td>
													<td>${atuacao.vaga.presencial}</td>
													<td>${atuacao.vaga.descricao}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

								</div>
							</div>
						</div>


					</div>
				</div>
			</div>

			<footer class="footer">
				<div class="container-fluid">

					<p class="copyright pull-right">&copy; 2016 EuVolunt�rio</p>
				</div>
			</footer>


		</div>
	</div>


</body>

<!--   Core JS Files   -->
<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="js/bootstrap-checkbox-radio-switch.js"></script>

<!--  Charts Plugin -->
<script src="js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="js/demo.js"></script>


</html>
