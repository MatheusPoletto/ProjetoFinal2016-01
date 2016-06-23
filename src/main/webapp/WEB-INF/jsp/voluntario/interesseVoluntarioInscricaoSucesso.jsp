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
						<a class="navbar-brand" href="#">Inscrição</a>
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
									<h3 align="center">
										Parabéns, você se candidatou a vaga com sucesso!
										</h3>
								</div>
								<div class="content">
									<form>
										<div class="row">
											<div class="col-md-12">
												<p align="center" class="category">Em breve a ONG
													responsável pela vaga analisará sua inscrição.</p>
												<p align="center" class="category">Caso sua inscrição
												seja confirmada a ONG irá fazer contato atavés do seu e-mail.</p>
												<p align="center" class="category">Você pode acompanhar
												o status da inscrição a partir do menu MINHAS ATUAÇÕES.</p>
											</div>


										</div>












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

					<p class="copyright pull-right">&copy; 2016 EuVoluntÃ¡rio</p>
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
