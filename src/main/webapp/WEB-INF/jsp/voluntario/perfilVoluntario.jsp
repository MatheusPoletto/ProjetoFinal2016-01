<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Light Bootstrap Dashboard by Creative Tim</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/animate.min.css" rel="stylesheet" />
<link href="css/light-bootstrap-dashboard.css" rel="stylesheet" />
<link href="css/demo.css" rel="stylesheet" />
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="img/sidebar-5.jpg">

			<!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


			<div class="sidebar-wrapper">

				<div class="logo">
					<a href="" class="simple-text"> Eu Voluntário </a>
				</div>
				<ul class="nav">
					<li><a href="dashboard.html"> <i class="pe-7s-graph"></i>
							<p>Dashboard</p>
					</a></li>
					<li class="active"><a href="user.html"> <i
							class="pe-7s-user"></i>
							<p>Meu Perfil</p>
					</a></li>
					<li><a href="table.html"> <i class="pe-7s-note2"></i>
							<p>Minhas Atuações</p>
					</a></li>


					<li><a href="procura_vaga.html"> <i class="pe-7s-search"></i>
							<p>Procurar Vaga</p>
					</a></li>

				</ul>
			</div>
		</div>

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
									<h4 class="title">Edit Profile</h4>
								</div>
								<div class="content">
									<form>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Nome Completo</label> <input type="text"
														class="form-control"
														placeholder="Aqui tem que aparecer o nome">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Email address</label> <input type="email"
														class="form-control" placeholder="Aqui o Email">
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Número de Telefone</label> <input type="tel"
														class="form-control" placeholder="Aqui vai o celular">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>Data de Nascimento</label> <input type="text"
														class="form-control"
														placeholder="Desabilitado, não muda quando nasce"
														disabled="">
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Senha</label> <input type="password"
														class="form-control">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>Confirmar Senha</label> <input type="password"
														class="form-control">
												</div>
											</div>
										</div>





										<button type="submit" class="btn btn-info btn-fill pull-right">Salvar
											Alterações</button>
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
										<a href="#"> <img class="avatar border-gray"
											src="img/faces/face-3.jpg" alt="..." />

											<h4 class="title">
												Nome do Voluntário<br /> <small>login do voluntário</small>
											</h4>
										</a>
									</div>

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
