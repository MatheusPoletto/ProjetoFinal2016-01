
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Perfil</title>
</head>

<c:import url="cabecalho.jsp" />
<body>

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
						<a class="navbar-brand" href="#">Meu Perfil</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left"></ul>
						<ul class="nav navbar-nav navbar-right">
						 
							<li><a href="<c:url value='/cadastro'/>"> 
							 Deslogar
							</a></li>
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
									<h4 class="title">Editar perfil</h4>
								</div>
								<div class="content">
									<form action="<c:url value='/editarEntidade'/>" method="post">
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<label>Entidade</label> <input type="text"
														class="form-control" name="nomeEntidade"
														placeholder="Entidade"
														value="${entidade.nomeEntidade}" disabled /> <input
														type="hidden" name="entidade.nomeEntidade"
														value="${entidade.nomeEntidade}" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label>Usu�rio</label> <input type="text"
														class="form-control" name="usuario.login"
														placeholder="Usu�rio" value="${usuario.login}" disabled>
													<input type="hidden" name="usuario.login"
														value="${usuario.login}" />
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label for="exampleInputEmail1">Email</label> <input
														type="email" class="form-control" name="entidade.email"
														placeholder="Email" value="${entidade.email}" />
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Rua</label> <input type="text" class="form-control"
														name="endereco.rua" placeholder="Rua"
														value="${endereco.rua}">
												</div>
											</div>
											<div class="form-group col-md-4">
												<label>Bairro</label> <input type="text"
													class="form-control" name="endereco.bairro"
													placeholder="Bairro"
													value="${endereco.bairro}">
											</div>
											<div class="form-group col-md-2">
												<label>N�</label> <input type="text" class="form-control"
													name="endereco.numero" placeholder="N�"
													value="${endereco.numero}">
											</div>
										</div>
										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label>Cidade</label> <input type="text"
														class="form-control" name="endereco.cidade"
														placeholder="Cidade"
														value="${endereco.cidade}">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label>UF</label> <input type="text" class="form-control"
														name="endereco.uf" placeholder="Unidade Federativa"
														value="${endereco.uf}">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label>CEP</label> <input type="text" class="form-control"
														name="endereco.cep" placeholder="CEP"
														value="${endereco.cep}">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-12">
												<div class="form-group">
													<label>Area de atua��o</label> <input type="text"
														name="entidade.areaAtuacao"
														value="${entidade.areaAtuacao}"
														class="form-control"
														placeholder="�rea de atua��o">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>Sobre</label>
													<textarea rows="5" class="form-control"
														placeholder="Descrica��o da entidade"
														name="entidade.descricao"
														value="${entidade.descricao}">${entidade.descricao}</textarea>
												</div>
											</div>
										</div>
										<button type="submit" class="btn btn-primary pull-right">SALVAR
											ALTERA��ES</button>
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
										<c:choose>
											<c:when test="${imagem == 'AAAAAAAAAAAAAAAAAAAAAAAAAAA='}">
   												<a href="#"> <img class="avatar border-gray"
												src="img/def-user.png" width="100" height="100" alt="..." />
											</c:when>

											<c:otherwise>
     											<a href="#"> <img class="avatar border-gray"
												src="data:image/jpeg;base64,${imagem}" width="100"
												height="100" alt="..." />
											</c:otherwise>
										</c:choose>


											<h4 class="title">${entidade.nomeEntidade}<br />
												<small>${usuario.login}</small>
											</h4>
										</a>
									</div>
									<p class="description text-center">"${entidade.descricao}"</p>
								</div>
							</div>
						</div>
						
						<div class="col-sm-12 col-md-4">
						
						<form action="<c:url value="/salvarImagem/imagem"/>"
							method="POST" enctype="multipart/form-data">
							<fieldset>
								<legend>Upload de Imagem</legend>
								<input type="file" name="imagem" />
							

								<button type="submit">Enviar</button>
							</fieldset>
						</form>
						</div>

						
					</div>
				</div>
			</div>
			<footer class="footer">
				<div class="container-fluid">
					<p class="copyright pull-right">&copy; 2016 EuVolunt�rio</p>
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
