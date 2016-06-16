<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="pt-br">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style.css" media="screen"
	title="no title" charset="utf-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<script src="js/ie-emulation-modes-warning.js"></script>
<link href="css/carousel.css" rel="stylesheet">
<link href="signin.css" rel="stylesheet">

<link href="css/bootstrap.css" rel="stylesheet" />

<link href="css/login-register.css" rel="stylesheet" />
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

<script src="jquery/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="js/login-register.js" type="text/javascript"></script>

</head>

<body>




	<div class="navbar-wrapper">
		<div class="container">

			<nav class="navbar navbar-inverse navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Eu Voluntário</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">Contato</a></li>

					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a data-toggle="modal" href="javascript:void(0)"
							onclick="openLoginModal();">Log in</a></li>
							
						<li><a></a></li>
						<li><a data-toggle="modal" href="<c:url value='/cadastro'/>">Cadastrar</a></li>
							
						<li><a></a></li>

					</ul>
				</div>
			</div>
			</nav>

		</div>
	</div>







	<!-- Carousel
     	    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide" src="img/imagem2.png" alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Eu Voluntário</h1>
						<p>Faça parte desta familia você também.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Cadastre-se
								já!!!</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide" src="img/banner2.jpg" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Eu Voluntário</h1>
						<p>Faça parte desta familia você também.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Cadastre-se
								já!!!</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide" src="img/banner3.jpg" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Eu Voluntário</h1>
						<p>Faça parte desta familia você também.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Cadastre-se
								já!!!</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Anterior</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Próximo</span>
		</a>
	</div>
	<!-- /.carousel -->

	<!-- Marketing messaging and featurettes
       ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="aqui vai a outra imagem"
					alt="Generic placeholder image" width="140" height="140">
				<h3>Somos mais de 80 ONGs</h3>
				<p>Na semana de lançamento do EuVoluntário tivemos mais de 50
					cadatrados de ONGs de todos os cantos do Brasil.</p>

			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="aqui vai a imagem"
					alt="Generic placeholder image" width="140" height="140">
				<h3>764 Voluntários</h3>
				<p>Mais de 700 voluntários ja se cadastraram, mostrando que o
					voluntáriado só cresce no Brasil.</p>

			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="e por fim aqui a imagem"
					alt="Generic placeholder image" width="140" height="140">
				<h3>Mais de 500 Vagas Abertas</h3>
				<p>A cada dia mais de 50 vagas são abertas pelas nossas ONGs
					cadastradas, agregando reconhecimento ao EuVoluntário.</p>
				<p></p>
				<p></p>

			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					De o primeiro <span class="text-muted">passo!</span>
				</h2>
				<p class="lead">O primeiro passo para a cidadania plena é o
					compromisso com o voluntariado.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					src="img/imagens/imagem4.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 col-md-push-5">
				<h2 class="featurette-heading">
					Amar ao próximo <br>
					<span class="text-muted">não faz mal!</span>
				</h2>
				<p class="lead">Praticar o voluntariado é um ato de amor. Todos
					devem praticar o voluntariado, amar não faz mal.</p>
			</div>
			<div class="col-md-5 col-md-pull-7">
				<img class="featurette-image img-responsive center-block"
					src="img/imagens/imagem6.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					O amor pode transformar <br>
					<span class="text-muted">tudo!</span>
				</h2>
				<p class="lead">Cada pequeno esforço voluntário, quando é feito
					com amor, transforma qualquer coisa, até mesmo a mais difícil.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					src="img/imagens/imagem 10.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->


		<!-- FOOTER -->
		<footer>
		<p class="pull-right">
			<a href="#">Voltar para o topo.</a>
		</p>
		<p>Eu Voluntario - 2016</p>
		</footer>

	</div>
	<!-- /.container -->


	<!-- Bootstrap core JavaScript
       ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write(
								'<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="../../assets/js/vendor/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>






	<div class="container">
		<div class="row">





			<div class="modal fade login" id="loginModal">
				<div class="modal-dialog login animated">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<br>
							<h2 class="" align="center">Login:</h2>
						</div>
						<div class="modal-body">
							<div class="box">
								<div class="content">

									<div class="error"></div>
									<div class="form loginBox">
										<form method="post" action="/login" accept-charset="UTF-8">
											<input id="email" class="form-control" type="text"
												placeholder="Email" name="email"> <input
												id="password" class="form-control" type="password"
												placeholder="Password" name="password"> <input
												class="btn btn-default btn-login" type="button"
												value="Login" onclick="">
										</form>
									</div>
								</div>
							</div>
							<div class="box">
								<div class="content registerBox" style="display: none;">
									<div class="form">
										<form method="post" html="{:multipart=>true}"
											data-remote="true" action="/register" accept-charset="UTF-8">
											<input id="email" class="form-control" type="text"
												placeholder="Email" name="email"> <input
												id="password" class="form-control" type="password"
												placeholder="Password" name="password"> <input
												id="password_confirmation" class="form-control"
												type="password" placeholder="Repeat Password"
												name="password_confirmation"> <input
												class="btn btn-default btn-register" type="submit"
												value="Create account" name="commit">
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<div class="forgot login-footer">
								<span> <a href="">Deseja criar uma conta?</a>
								</span>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>


		<body>
</html>
