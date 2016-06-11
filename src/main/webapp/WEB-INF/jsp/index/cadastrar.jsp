<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/media.css" />
<link rel="stylesheet" type="text/css" href="css/sprite.css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
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
</head>
<body>
	${variable}
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-5 col-md-offset-1">
					<h1>Cadastro de novo usuario</h1>
					<p>Por favor, escolha como você deseja se cadastrar:</p>
					Ong <input type="radio" name="optradio" onclick="tipoSelecionado()" id="radioOng">
					Voluntario <input type="radio" name="optradio" onclick="tipoSelecionado()" id="radioVoluntario">

					<div id="formVoluntario">
						<form action="<c:url value='/cadastrarVoluntario'/>" method="post">
							<h2>Cadastro de novo Voluntario:</h2>
							<br />
							<div class="form-group">
								<label>Nome Completo: </label>
								<input type="text" name="voluntario.nome" value="${voluntario.nome}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Celular: </label> 
								<input type="tel" name="voluntario.celular" value="${voluntario.celular}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Data de nascimento: </label>
								<input type="text" name="voluntario.nascimento" value="${voluntario.nascimento}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Email</label> 
								<input type="email" name="voluntario.email" value="${voluntario.email}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Login</label>
								<input type="text" name="usuario.login" value="${usuario.login}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Senha</label>
								<input type="password" name="usuario.senha" value="${usuario.senha}" class="form-control" />
							</div>

							<button type="submit" class="btn btn-default">Cadastrar</button>
						</form>
					</div>

					<div id="formOng">
						<h2>Cadastro de Nova Organização:</h2>
						</br>
						<form action="<c:url value='/cadastrarEntidade'/>" method="post">
							<div class="form-group">
								<label>Nome da Ong:</label>
								<input type="text" name="entidade.nomeEntidade" value="${entidade.nomeEntidade}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Telefone: </label>
								<input type="tel" name="entidade.telefone" value="${entidade.telefone}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Email</label>
								<input type="email" name="entidade.email" value="${entidade.email}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Login</label>
								<input type="text" name="usuario.login" value="${usuario.login}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Senha</label>
								<input type="password" name="usuario.senha" value="${usuario.senha}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Area Atuação</label> <select>
									<option value="${entidade.areaAtuacao}" name="entidade.areaAtuacao">teste</option>
								</select>
							</div>

							<h3>Agora por favor informe o endereço da sua instituição:</h3>
							<div class="form-group">
								<label>Rua</label>
								<input type="text" name="endereco.rua" value="${endereco.rua}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Bairro</label>
								<input type="text" name="endereco.bairro" value="${endereco.bairro}" class="form-control" />
							</div>

							<div class="form-group">
								<label>Numero</label>
								<input type="text" name="endereco.numero" value="${endereco.numero}" class="form-control" />

							</div>
							<div class="form-group">
								<label>cidade</label>
								<input type="text" name="endereco.cidade" value="${endereco.cidade}"class="form-control" />
							</div>
							
							<div class="form-group">
								<label>UF </label>
								<input type="text" name="endereco.uf" value="${endereco.uf}"class="form-control" />
							</div>

							<div class="form-group">
								<label>cep </label>
								<input type="text" name="endereco.cep" value="${endereco.rua}" class="form-control" />
							</div>

							<button type="submit" class="btn btn-default">Cadastrar</button>
						</form>
					</div>
				</div>

				<div class="col-md-5 col-md-offset-1">
					<div class="col-md-10">
						<h1>Já é cadastrado?</h1>
						<br />
						<h1>Por favor realize o seu login:</h1>
						<br />
						<form action="<c:url value='/autenticar'/>" method="post">
							<div class="form-horizontal">
								<div class="form-group">
									<label>Login </label>
									<input type="text" name="usuario.login" value="${usuario.login}" class="form-control" required />
								</div>
								<div class="form-group">
									<label>Senha </label>
									<input type="password" name="usuario.senha" value="${usuario.senha}" class="form-control" required />
								</div>
								<div class="form-group">
									<button type="submit" class="btn btn-default">Realizar Login</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<body>
</html>