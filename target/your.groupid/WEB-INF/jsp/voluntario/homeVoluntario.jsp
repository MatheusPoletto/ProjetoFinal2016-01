
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
						<a class="navbar-brand" href="#">Dashboard</a>
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

						<div class="content">
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">
										<div class="card">
											<div class="header">
												<h4 class="title">Últimas vagas que foram abertas</h4>
												<p class="category">Veja abaixo as últimas vagas
													cadastradas em nosso site</p>
											</div>
											<div class="content table-responsive table-full-width">
												<table class="table table-hover table-striped">
													<thead>
														<th>Vaga nº</th>
														<th>Nome</th>
														<th>Presencial?</th>
														<th>Estado</th>
														<th>Cidade</th>

														<th>Descrição</th>
														<th>Ver</th>
													</thead>
													<tbody>
														<c:forEach items="${atuacaoview}" var="atuacao">
															<tr>
																<td>${atuacao.codigo}</td>
																<td>${atuacao.vaga.nomeVaga}</td>
																<td>${atuacao.vaga.presencial}</td>
																<td>${atuacao.vaga.cidade}</td>
																<td>${atuacao.vaga.estado}</td>
																<td>${atuacao.vaga.descricao}</td>
													
																<td><a href="<c:url value='/passaInteresse/${usuario.codigo},${atuacao.codigo}'/>">INCREVER-SE</a></td>
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



						<br>




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
