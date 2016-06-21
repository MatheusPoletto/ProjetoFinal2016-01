<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link href="css/gambiarra.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">
<link href="css/cadastro.css" rel="stylesheet">
<title>Eu voluntário</title>

<c:import url="cabecalho.jsp" />
</head>


<script language="javascript" type="text/javascript">
	function tipoSelecionado() {
		document.getElementById('formOng').style.display = 'none';
		document.getElementById('formVoluntario').style.display = 'none';
		if (document.getElementById('radioOng').checked) {
			document.getElementById('formOng').style.display = 'block';
		}
		if (document.getElementById('radioVoluntario').checked) {
			document.getElementById('formVoluntario').style.display = 'block';
		}

	}
</script>
<body>
	<div class="content"></div>
	<c:import url="menu.jsp" />
	<div class="content container-fluid  card col-sm-8 col-sm-offset-2">
	${mensagem}
		<div class="row content">
			<div>
				<div class="col-sm-8 col-sm-offset-2">
					<h1>Cadastro de novo usuario</h1>
					<p>Por favor, escolha como você deseja se cadastrar:</p>
						<input type="radio" name="optradio" onclick="tipoSelecionado()" id="radioOng">
						Ong 
						<br><input type="radio"	name="optradio" onclick="tipoSelecionado()" id="radioVoluntario">
						Voluntário
					<br> <br>
					<div id="formVoluntario">
						<form action="<c:url value='/cadastrarVoluntario'/>" method="post">
							<h2>Cadastro de novo Voluntario:</h2>
							<br />
							<div class="form-group">
								<label>Nome completo: </label> <input type="text"
									name="voluntario.nome" value="${voluntario.nome}"
									class="form-control" />
							</div>
							<div class="form-group">
								<label>Celular: </label> <input type="tel"
									name="voluntario.celular" value="${voluntario.celular}"
									class="form-control" />
							</div>
							<div class="form-group">
								<label>Data de nascimento: </label> <input type="text"
									name="voluntario.nascimento" value="${voluntario.nascimento}"
									class="form-control" />
							</div>
							<div class="form-group">
								<label>Email</label> <input type="email" name="voluntario.email"
									value="${voluntario.email}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Login</label> <input type="text" name="usuario.login"
									value="${usuario.login}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Senha</label> <input type="password" name="usuario.senha"
									value="${usuario.senha}" class="form-control" />
							</div>
							<button type="submit" class="btn btn-default">Cadastrar</button>
							<br> <br>
						</form>
					</div>
					<div id="formOng">
						<h2>Cadastro de Nova organização:</h2>
						</br>
						<form action="<c:url value='/cadastrarEntidade'/>" method="post">
							<div class="form-group">
								<label>Nome da Ong:</label> <input type="text"
									name="entidade.nomeEntidade" value="${entidade.nomeEntidade}"
									class="form-control" />
							</div>
							<div class="form-group">
								<label>Telefone: </label> <input type="tel"
									name="entidade.telefone" value="${entidade.telefone}"
									class="form-control" />
							</div>
							<div class="form-group">
								<label>Email</label> <input type="email" name="entidade.email"
									value="${entidade.email}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Login</label> <input type="text" name="usuario.login"
									value="${usuario.login}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Senha</label> <input type="password" name="usuario.senha"
									value="${usuario.senha}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Area de atuação</label> <input type="text"
									name="entidade.areaAtuacao" value="${entidade.areaAtuacao}"
									class="form-control" />
							</div>
							<h3>Endereço da instituição:</h3>
							<div class="form-group">
								<label>Rua</label> <input type="text" name="endereco.rua"
									value="${endereco.rua}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Bairro</label> <input type="text" name="endereco.bairro"
									value="${endereco.bairro}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Número</label> <input type="text" name="endereco.numero"
									value="${endereco.numero}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Cidade</label> <input type="text" name="endereco.cidade"
									value="${endereco.cidade}" class="form-control" />
							</div>
							<div class="form-group">
								<label>UF </label> <input type="text" name="endereco.uf"
									value="${endereco.uf}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Cep </label> <input type="text" name="endereco.cep"
									value="${endereco.rua}" class="form-control" />
							</div>
							<button type="submit" class="btn btn-default">Cadastrar</button>
							<br> <br>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

		
	<footer class="footer col-sm-8 col-sm-offset-2">
		<div class="container-fluid">
		
	<c:import url="rodape.jsp" />