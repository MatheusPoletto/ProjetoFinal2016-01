
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
						<a class="navbar-brand" href="#">Dados da inscrição</a>
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
									<h4 class="title">Dados do possível voluntário</h4>
									<br>
									<p class="category">Observe abaixo os dados do voluntário e
										opte por aceitar a inscrição ou revogar. Entre em contato com
										o voluntário por email ou telefone.</p>
								</div>

								<div class="content">
									<form action="<c:url value='/aceitarInscricao'/>" method="post">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Vaga Nº</label> <input type="number"
														class="form-control" placeholder="Número da vaga"
														value="${atuacao.vaga.codigo}" disabled=""> <input
														type="hidden" name="atuacao.vaga.codigo"
														value="${atuacao.vaga.codigo}" />
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Nome da Vaga</label> <input type="text"
														class="form-control" placeholder="atuacao.vaga.nomeVaga"
														value="${atuacao.vaga.nomeVaga}" disabled="">
												</div>
											</div>


										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Nome do possível voluntário</label> <input
														type="text" class="form-control"
														placeholder="Nome do voluntário"
														value="${atuacao.voluntario.nome}" disabled=""> 
												</div>
											</div>


											<div class="col-md-6">
												<div class="form-group">
													<label>E-mail do voluntário</label> <input type="email"
														class="form-control" placeholder="E-mail do voluntário"
														value="${atuacao.voluntario.email}" disabled="">
												</div>
											</div>

										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Celular do voluntário</label> <input type="tel"
														class="form-control" placeholder="Celular do voluntário"
														value="${atuacao.voluntario.celular}" disabled="">
												</div>
											</div>


											<div class="col-md-6">
												<div class="form-group">
													<label>Idade do voluntário</label> <input
														type="text" class="form-control"
														placeholder="Idade do voluntário"
														value="${idadeVoluntario}" disabled="">
												</div>
											</div>

										</div>
		
										<div class="row">
										<div class="col-md-6">
											<a href="<c:url value="/revogarInscricao/${atuacao.codigo}"/>" class="btn btn-primary btn-danger">REVOGAR INSCRIÇÃO</a>
											<div class="clearfix"></div>
										</div>

										<div class="col-md-6">
											<button type="submit"
												class="btn btn-info btn-fill pull-right">Confirmar inscrição</button>
											<div class="clearfix"></div>
										</div>
										</div>
									</form>
									
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

<script type="text/javascript">
	$(document).ready(function() {

		demo.initChartist();

	});
</script>

</html>
