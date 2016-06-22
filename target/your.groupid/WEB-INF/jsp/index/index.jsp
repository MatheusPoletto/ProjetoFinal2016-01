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
						<h1>ALEGRE-SE</h1>
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
			<div class="col-md-9">
				<h2 class="featurette-heading">
					Dê o primeiro passo!
				</h2>
				<p class="lead">
					Faça como Joana, ela encarou que o primeiro passo para a mudança é a aceitação. 
					Uma vez que você aceite a si mesmo, você abre a porta para a mudança. 
					Isso é tudo o que você tem que fazer. Mudança não é algo que você faz, é algo que você permite.</p>
			</div>
			<div class="col-md-3">
				<img class="featurette-image img-responsive center-block"
					src="img/imagem4.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-9 col-md-push-3">
				<h2 class="featurette-heading">
					Seja solidário, ame o próximo!
				</h2>
				<p class="lead">Sentimento de ajudar ao próximo. 
				Esta é a base deste conceito tão amplo chamado solidariedade.
				Uma postura solidária envolve a capacidade de compartilhar o sentimento de outra pessoa e,
				de alguma forma, tentar amenizar o problema.</p>
			</div>
			<div class="col-md-3 col-md-pull-9">
				<img class="featurette-image img-responsive center-block"
					src="img/imagem6.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-9">
				<h2 class="featurette-heading">
					Transforme a si e o resto do mundo em algo melhor!
				</h2>
				<p class="lead">O sentimento verdadeiro é a compreensão, é o perdão; 
				é aquele que dá uma sensação de paz.
				Em vez da ação que busca se desfazer de partes de nós mesmos, 
				devemos aprender a arte da transformação. Podemos transformar nossa raiva, 
				por exemplo, em algo mais salutar, como a compreensão.</p>
			</div>
			<div class="col-md-3">
				<img class="featurette-image img-responsive center-block"
					src="img/imagem 10.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<footer>
			<div>
				<c:import url="rodape.jsp" />