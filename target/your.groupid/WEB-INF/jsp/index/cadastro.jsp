<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link href="css/gambiarra.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">
<link href="css/cadastro.css" rel="stylesheet">
<title>Eu voluntário</title>

<c:import url="cabecalho.jsp" />
</head>

<body>
	<div class="content"></div>
	<c:import url="menu.jsp" />

	<c:if test="${precisaMensagem == 'SIM'}">
		
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2">
					</br>
					<c:if test="${tipoMensagem == 'SUCESSO'}">
						<div class="alert alert-success fade in">
							<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Successo!</strong> Seu usuário foi cadastrado com
							sucesso!
						</div>
					</c:if>
					<c:if test="${tipoMensagem == 'ALERTA_LOGIN_EXISTE'}">
						<div class="alert alert-warning fade in">
							<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Cadastro cancelado!</strong> Login já está em uso, tente
							outro!
						</div>
					</c:if>
					<c:if test="${tipoMensagem == 'ERRO_LOGIN_INCORRETO'}">
						<div class="alert alert-danger fade in">
							<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Problema de autenticação!</strong> O usuário ou senha está incorreto!
						</div>
					</c:if>
				</div>
			</div>
	</c:if>
	<div class="content container-fluid  card col-sm-8 col-sm-offset-2">
		<div class="row content">
			<div>
				<div class="col-sm-8 col-sm-offset-2">
					<h2>Cadastro de novo usuário</h2>
					<p>Escolha como você deseja se cadastrar:</p>
					<ul class="nav nav-tabs">
						<li><a data-toggle="tab" href="#entidade">Voluntário</a></li>
						<li class="active"><a data-toggle="tab" href="#ong">ONG</a></li>
					</ul>

					<div class="tab-content">
						<div id="ong" class="tab-pane fade in active">
							</br>
							<form action="<c:url value='/cadastrarEntidade'/>" method="post">
								<div class="form-group">
									<label for="nomeEntidade">Nome da sua organização(ONG):</label> 
									<input type="text" 
										id="nomeEntidade" name="entidade.nomeEntidade"
										value="${entidade.nomeEntidade}" class="form-control" required />
								</div>
								<div class="form-group">
									<label for="telefoneEntidade">Telefone para contato:</label> 
									<input type="tel"
										id="telefoneEntidade" name="entidade.telefone"
										value="${entidade.telefone}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="emailEntidade">E-mail:</label> 
									<input type="email"
										name="entidade.email" id="emailEntidade"
										value="${entidade.email}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="entidadeLogin">Login:</label>
									<input type="text" 
										id="entidadeLogin" name="usuario.login"
										value="${usuario.login}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="senhaEntidade">Senha:</label>
									<input type="password"
										id="senhaEntidade" name="usuario.senha" 
										value="${usuario.senha}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="areaAtuacao">Area de atuação da organização:</label> 
									<input type="text"	
										id="areaAtuacao" name="entidade.areaAtuacao" 
										value="${entidade.areaAtuacao}"	class="form-control" required  />
								</div>
								<h3>Endereço da organização:</h3>
								<div class="form-group">
									<label for="ruaEntidade">Rua:</label>
									<input type="text"
										id="ruaEntidade" name="endereco.rua"
										value="${endereco.rua}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="bairroEntidade">Bairro:</label>
									<input type="text"
										id="bairroEntidade" name="endereco.bairro"
										value="${endereco.bairro}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="numeroEntidade">Número:</label>
									<input type="text"
										id="numeroEntidade" name="endereco.numero"
										value="${endereco.numero}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="cidadeEntidade">Cidade:</label>
									<input type="text" 
										id="cidadeEntidade" name="endereco.cidade"
										value="${endereco.cidade}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="ufEntidade">UF:</label>
									<input type="text"
										id="ufEntidade" name="endereco.uf"
										value="${endereco.uf}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="cepEntidade">Cep:</label>
									<input type="text"
										id="cepEntidade" name="endereco.cep"
										value="${endereco.cep}" class="form-control" required  />
								</div>
								<button type="submit" class="btn btn-primary btn-info">CADASTRAR <span class="glyphicon glyphicon-ok"></span></button>
								<br> <br>
							</form>
						</div>
						<div id="entidade" class="tab-pane fade">
							</br>
							<form action="<c:url value='/cadastrarVoluntario'/>"
								method="post">
								<div class="form-group">
									<label for="nomeVoluntario">Nome completo:</label>
									<input type="text"
										id="nomeVoluntario" name="voluntario.nome" 
										value="${voluntario.nome}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="celularVoluntario">Celular para contato:</label>
									<input type="tel"
										id="celularVoluntario" name="voluntario.celular"
										value="${voluntario.celular}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="dataVoluntario">Data de nascimento:</label>
									<input type="text"
										id="dataVoluntario" name="voluntario.nascimento"
										value="${voluntario.nascimento}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="emailVoluntario">Email:</label>
									<input type="email"
										id="emailVoluntario" name="voluntario.email"
										value="${voluntario.email}" class="form-control" required  />
								</div>
								<div class="form-group">
									<label for="loginVoluntario">Login:</label>
									<input type="text"
										id="loginVoluntario" name="usuario.login"
										value="${usuario.login}" class="form-control" required />
								</div>
								<div class="form-group">
									<label for="senhaVoluntario">Senha:</label>
									<input type="password"
										id="senhaVoluntario" name="usuario.senha"
										value="${usuario.senha}" class="form-control" required  />
								</div>
								<button type="submit" class="btn btn-primary btn-success">CADASTRAR <span class="glyphicon glyphicon-ok"></span></button>
								<br> <br>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<footer class="footer col-sm-8 col-sm-offset-2">
		<div class="container-fluid">

			<c:import url="rodape.jsp" />