
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Principal - EuVoluntário</title>
</head>

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
					<a class="navbar-brand" href="#">Principal</a>
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
						<c:if test="${mandandoEmail == 'SIM'}">
							<div class="alert alert-info fade in">
								<span class="glyphicon glyphicon-no" aria-hidden="true"></span>
								<a href="#" class="close" data-dismiss="alert"
									aria-label="close">&times;</a> <strong>Inscrição aceita!</strong> O voluntário irá receber uma notificação por e-mail em breve para fazer contato.
							</div>
						</c:if>
						<div class="card">
							<div class="header">
								<h3 class="title">Inscrições para suas vagas</h3>
								<br>
								<p class="category">Aqui estão as suas últimas vagas que
									tiveram voluntários candidatados. Por favor verifique os dados
									do mesmo e aceite-o.</p>
							</div>

							<div class="content table-responsive table-full-width">
								<table class="table table-hover table-striped">
									<thead>
										<th>Atuação nº</th>
										<th>Nome da Vaga</th>
										<th>Descrição</th>
										<th>Nome do Voluntário</th>
										<th>Ver dados do Voluntário</th>
									</thead>
									<tbody>
										<c:forEach items="${atuacoesConfirmar}" var="atuacao">
											<tr>
												<td>${atuacao.codigo}</td>
												<td>${atuacao.vaga.nomeVaga}</td>
												<td>${atuacao.vaga.descricao}</td>
												<td>${atuacao.voluntario.nome}</td>
												<td><a
													href="<c:url value='/abrirInscricao/${atuacao.codigo}'/>">Ver
														inscrição</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

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
    	$(document).ready(function(){

        	demo.initChartist();



    	});
	</script>

	</html>