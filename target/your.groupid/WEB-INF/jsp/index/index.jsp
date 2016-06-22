<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<c:import url="cabecalho.jsp" />
<title>Eu volunt�rio</title>
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
						<p>"O amor n�o se v� com os olhos mas com o cora��o"</p>
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
						<p>"Voc� s� ter� fracassado quando desisitir de tentar"</p>
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
						<p>"Saber encontrar a alegria na alegria dos outros, � o segredo da felicidade"</p>
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
			<span class="sr-only">Pr�ximo</span>
		</a>
	</div>

	<div class="container marketing">
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="img/backcircle80.png"
					alt="Generic placeholder image" width="140" height="140">
				<h3>S�o mais de 80 ONGs</h3>
				<p>Na semana de lan�amento do sistema foram cadastradas mais de
					80 organiza��es estabelecidas nos quatro cantos do p�is.</p>
			</div>
			<div class="col-lg-4">
				<img class="img-circle" src="img/backcircle500.png"
					alt="Generic placeholder image" width="140" height="140">
				<h3>Com mais de 500 vagas</h3>
				<p>Uma m�dia de 50 vagas s�o abertas por dia pelas diversas
					organiza��es cadastradas e os n�meros s� crescem.</p>
			</div>
			<div class="col-lg-4">
				<img class="img-circle" src="img/backcircle764.png"
					alt="Generic placeholder image" width="140" height="140">
				<h3>e 764 volunt�rios</h3>
				<p>Mais de 765 pessoas j� se cadastraram como volunt�rios sendo
					que mais da metade j� come�ou atuar em uma vaga.</p>
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-9">
				<h2 class="featurette-heading">
					D� o primeiro passo!
				</h2>
				<p class="lead">
					Fa�a como Joana, ela encarou que o primeiro passo para a mudan�a � a aceita��o. 
					Uma vez que voc� aceite a si mesmo, voc� abre a porta para a mudan�a. 
					Isso � tudo o que voc� tem que fazer. Mudan�a n�o � algo que voc� faz, � algo que voc� permite.</p>
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
					Seja solid�rio, ame o pr�ximo!
				</h2>
				<p class="lead">Sentimento de ajudar ao pr�ximo. 
				Esta � a base deste conceito t�o amplo chamado solidariedade.
				Uma postura solid�ria envolve a capacidade de compartilhar o sentimento de outra pessoa e,
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
				<p class="lead">O sentimento verdadeiro � a compreens�o, � o perd�o; 
				� aquele que d� uma sensa��o de paz.
				Em vez da a��o que busca se desfazer de partes de n�s mesmos, 
				devemos aprender a arte da transforma��o. Podemos transformar nossa raiva, 
				por exemplo, em algo mais salutar, como a compreens�o.</p>
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