<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Detalhes da Vaga - EuVolunt�rio</title>
<link rel="icon" type="image/png" href="img/favicon.ico">

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
						<a class="navbar-brand" href="#">Candidatar-se</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left">

						</ul>

						<ul class="nav navbar-nav navbar-right">


							<li><a href="<c:url value='/cadastro'/>"> Deslogar </a></li>
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
									<h4 class="title">Candidatar-se a Vaga</h4>
									<br>
									<p class="category">Observe abaixo todos os dados da vaga,
										caso tenha certeza clique em candidatar-se.</p>
								</div>
								<div class="content">
									<form action="<c:url value='/interesseVoluntarioInscricao'/>" method="get">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Nome da ONG</label> <input type="text"
														class="form-control" name="vaga.entidade.nomeEntidade" value="${vaga.entidade.nomeEntidade}"
														placeholder="Aqui tem que aparecer o nome" disabled="">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Email da ONG</label> <input type="email"
														class="form-control" placeholder="vai o email da ong"
														name="vaga.entidade.email" value="${vaga.entidade.email}"
														disabled="">
												</div>
											</div>


										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Nome da Vaga</label> <input type="text"
														class="form-control" placeholder="Aqui o nome da vaga"
														name="vaga.nomeVaga" value="${vaga.nomeVaga}"
														disabled="">
												</div>
											</div>


											<div class="col-md-6">
												<div class="form-group">
													<label>Vaga Presencial ?</label> <input type="text"
														class="form-control" placeholder="Aqui vai sim ou não"
														name="vaga.presencial" value="${vaga.presencial}"
														disabled="">
												</div>
											</div>

										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Estado</label> <input type="text"
														class="form-control" placeholder="Aqui vai o estado"
														name="vaga.estado" value="${vaga.estado}"
														disabled="">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>Cidade</label> <input type="text"
														class="form-control" placeholder="vai a cidade"
														name="vaga.cidade" value="${vaga.cidade}"
														disabled="">
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>Descri��o</label>
													<textarea name="name" rows="2" cols="40"
														class="form-control" disabled=""
														name="vaga.nomeVaga" value="${vaga.descricao}">${vaga.descricao}</textarea>
												</div>
											</div>

										</div>





										<button type="submit" class="btn btn-info btn-fill pull-right">Concorrer a vaga</button>
										<div class="clearfix"></div>
									</form>
								</div>
							</div>
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
