<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

	<c:import url="cabecalho.jsp"/>
	<title>Eu volunt�rio</title>
</head>

<body>
	<div class="navbar-wrapper">
		<div class="container">
			<c:import url="menu.jsp"/>
		</div>
	</div>
	
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
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
						<h1>Eu Volunt�rio</h1>
						<p>Fa�a parte desta familia voc� tamb�m.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">CADASTRE-SE</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide" src="img/banner2.jpg" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Eu Volunt�rio</h1>
						<p>Fa�a parte desta familia voc� tamb�m.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">CADASTRE-SE</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide" src="img/banner3.jpg" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Eu Volunt�rio</h1>
						<p>Fa�a parte desta familia voc� tamb�m.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">CADASTRE-SE</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> 
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Anterior</span>
		</a> 
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Pr�ximo</span>
		</a>
	</div>

	<div class="container marketing">
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="aqui vai a outra imagem" alt="Generic placeholder image" width="140" height="140">
				<h3>Somos mais de 80 ONGs</h3>
				<p>Na semana de lan�amento do EuVolunt�rio tivemos mais de 50 cadatrados de ONGs de todos os cantos do Brasil.</p>
			</div>
			<div class="col-lg-4">
				<img class="img-circle" src="aqui vai a imagem" alt="Generic placeholder image" width="140" height="140">
				<h3>764 Volunt�rios</h3>
				<p>Mais de 700 volunt�rios ja se cadastraram, mostrando que o volunt�riado s� cresce no Brasil.</p>
			</div>
			<div class="col-lg-4">
				<img class="img-circle" src="e por fim aqui a imagem" alt="Generic placeholder image" width="140" height="140">
				<h3>Mais de 500 Vagas Abertas</h3>
				<p>A cada dia mais de 50 vagas s�o abertas pelas nossas ONGs cadastradas, agregando reconhecimento ao EuVolunt�rio.</p>
			</div>
		</div>
		
		<hr class="featurette-divider">
		
		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">De o primeiro <span class="text-muted">passo!</span></h2>
				<p class="lead">O primeiro passo para a cidadania plena � o	compromisso com o voluntariado.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block" src="img/imagem4.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 col-md-push-5">
				<h2 class="featurette-heading">Amar ao pr�ximo <br>
					<span class="text-muted">n�o faz mal!</span>
				</h2>
				<p class="lead">Praticar o voluntariado � um ato de amor. Todos	devem praticar o voluntariado, amar n�o faz mal.</p>
			</div>
			<div class="col-md-5 col-md-pull-7">
				<img class="featurette-image img-responsive center-block" src="img/imagem6.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">O amor pode transformar <br>
					<span class="text-muted">tudo!</span>
				</h2>
				<p class="lead">Cada pequeno esfor�o volunt�rio, quando � feito	com amor, transforma qualquer coisa, at� mesmo a mais dif�cil.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block" src="img/imagem 10.jpg" alt="Generic placeholder image">
			</div>
		</div>
		
		<hr class="featurette-divider">
	
		<footer>
		<div>
			<c:import url="rodape.jsp"/>	
