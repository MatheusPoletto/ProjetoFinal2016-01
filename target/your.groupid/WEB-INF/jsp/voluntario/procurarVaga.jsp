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
						<button type="button" class="navbar-toggle" data-toggle="collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Procurar vaga</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left">

						</ul>

						<ul class="nav navbar-nav navbar-right">
							<li><a href=""> Deslogar </a></li>


						</ul>
					</div>
				</div>
			</nav>


			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="card col-md-12">
							<div class="header">
								<h3 class="title">Procurar vaga</h3>
								<p class="category">Faça uma busca preenchendo com o nome ou
									a descrição para a vaga</p>
							</div>
							</br>
							<form class="form-horizontal" action="<c:url value='/procurarVagaResultado'/>" method="post">
								<div class="form-group">
									<div class="col-sm-7">
										<label>Nome da vaga</label> <input type="text" name="nome"
											value="" class="form-control">
									</div>

									<div class="col-sm-5 col-sm-offset-0">
										<label>Descrição</label> <input type="text" name="descricao"
											value="" class="form-control">
									</div>
								</div>

								<button type="submit" class="btn btn-info btn-fill pull-right">Procurar</button>
								<div class="clearfix"></div>
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
