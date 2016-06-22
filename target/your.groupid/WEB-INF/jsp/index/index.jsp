<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<c:import url="cabecalho.jsp" />
<title>Eu voluntário</title>
</head>

<body>
	<div class="content"></div>
	<c:import url="menu.jsp" />

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide" src="img/meslide2.jpg" alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>DEMONSTRE</h1>
						<p>"O amor não se vê com os olhos mas com o coração"</p>
						<p>
							<a class="btn btn-lg btn-primary"
								href="<c:url value='/cadastro'/>" role="button">CADASTRE-SE</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide" src="img/meslide3.jpg" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>PERSISTA</h1>
						<p>"Você só terá fracassado quando desisitir de tentar"</p>
						<p>
							<a class="btn btn-lg btn-primary"
								href="<c:url value='/cadastro'/>" role="button">CADASTRE-SE</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide" src="img/mpslide2.jpg" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>ALEGRIA</h1>
						<p>"Saber encontrar a alegria na alegria dos outros, é o segredo da felicidade"</p>
						<p>
							<a class="btn btn-lg btn-primary"
								href="<c:url value='/cadastro'/>" role="button">CADASTRE-SE</a>
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

	<div class="container marketing">
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="img/backcircle80.png"
					alt="Generic placeholder image" width="140" height="140">
				<h3>São mais de 80 ONGs</h3>
				<p>Na semana de lançamento do sistema foram cadastradas mais de
					80 organizações estabelecidas nos quatro cantos do páis.</p>
			</div>
			<div class="col-lg-4">
				<img class="img-circle" src="img/backcircle500.png"
					alt="Generic placeholder image" width="140" height="140">
				<h3>Com mais de 500 vagas</h3>
				<p>Uma média de 50 vagas são abertas por dia pelas diversas
					organizações cadastradas e os números só crescem.</p>
			</div>
			<div class="col-lg-4">
				<img class="img-circle" src="img/backcircle764.png"
					alt="Generic placeholder image" width="140" height="140">
				<h3>e 764 voluntários</h3>
				<p>Mais de 765 pessoas já se cadastraram como voluntários sendo
					que mais da metade já começou atuar em uma vaga.</p>
			</div>
		</div>

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
					src="img/imagem4.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 col-md-push-5">
				<h2 class="featurette-heading">
					Amar ao próximo <br> <span class="text-muted">não faz
						mal!</span>
				</h2>
				<p class="lead">Praticar o voluntariado é um ato de amor. Todos
					devem praticar o voluntariado, amar não faz mal.</p>
			</div>
			<div class="col-md-5 col-md-pull-7">
				<img class="featurette-image img-responsive center-block"
					src="img/imagem6.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					O amor pode transformar <br> <span class="text-muted">tudo!</span>
				</h2>
				<p class="lead">Cada pequeno esforço voluntário, quando é feito
					com amor, transforma qualquer coisa, até mesmo a mais difícil.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					src="img/imagem 10.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<footer>
			<div>
				<c:import url="rodape.jsp" />