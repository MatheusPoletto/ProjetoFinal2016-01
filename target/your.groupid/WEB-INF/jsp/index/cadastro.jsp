<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <script src="js/ie-emulation-modes-warning.js"></script>
	<link href="css/signin.css" rel="stylesheet">
	<script src="js/login-register.js" type="text/javascript"></script>
	<script src="jquery/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<link href="css/login-register.css" rel="stylesheet" />
	<link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>
	<link rel="stylesheet" href="css/cadastro.css">
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
${variable}
	<div class="content">
	</div>
 	<nav class="navbar navbar-inverse navbar-static-top">
   	<div class="container">
    	<div class="navbar-header">
       		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
         	<span class="sr-only">Toggle navigation</span>
         	<span class="icon-bar"></span>
         	<span class="icon-bar"></span>
         	<span class="icon-bar"></span>
       		</button>
       		<a class="navbar-brand" href="#">EuVoluntário</a>
    	</div>
     	<div id="navbar" class="navbar-collapse collapse">
       		<ul class="nav navbar-nav">
        		<li><a href="<c:url value='/'/>">Home</a></li>
        		<li><a href="#">Contato</a></li> 
       		</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">Log in</a></li>
				<li><a></a></li>
			</ul>
     	</div>
   	</div>
 	</nav>
	<div class="content container-fluid  card col-sm-8 col-sm-offset-2">
  		<div class="row content">
    		<div>
      			<div class="col-sm-8 col-sm-offset-2">
        			<h1>Cadastro de novo usuario</h1>
					<p>Por favor, escolha como você deseja se cadastrar:</p>
					Ong	<input type="radio" name="optradio" onclick="tipoSelecionado()" id="radioOng">
					Voluntario <input type="radio" name="optradio" onclick="tipoSelecionado()" id="radioVoluntario">
					<br>
					<br>
					<div id="formVoluntario" >
						<form action="<c:url value='/cadastrarVoluntario'/>" method="post">
							<h2>Cadastro de novo Voluntario:</h2>
							<br />
							<div class="form-group">
								<label>Nome completo: </label>
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
							<br>
							<br>
						</form>
					</div>
					<div id="formOng">
						<h2>Cadastro de Nova organização:</h2>
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
								<label>Area de atuação</label> 
								<input type="text" name="entidade.areaAtuacao" value="${entidade.areaAtuacao}" class="form-control" />
							</div>
							<h3>Endereço da instituição:</h3>
							<div class="form-group">
								<label>Rua</label>
								<input type="text" name="endereco.rua" value="${endereco.rua}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Bairro</label>
								<input type="text" name="endereco.bairro" value="${endereco.bairro}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Número</label>
								<input type="text" name="endereco.numero" value="${endereco.numero}" class="form-control" />
							</div>
							<div class="form-group">
								<label>Cidade</label>
								<input type="text" name="endereco.cidade" value="${endereco.cidade}"class="form-control" />
							</div>
							<div class="form-group">
								<label>UF </label>
								<input type="text" name="endereco.uf" value="${endereco.uf}"class="form-control" />
							</div>
							<div class="form-group">
								<label>Cep </label>
								<input type="text" name="endereco.cep" value="${endereco.rua}" class="form-control" />
							</div>
							<button type="submit" class="btn btn-default">Cadastrar</button>
							<br>
							<br>
						</form>
					</div>
      </div>
    </div>
  </div>
</div>
<br>
<br>
<div class="container">
	<div class="row">
		<div class="modal fade login" id="loginModal">
			 <div class="modal-dialog login animated">
					 <div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<br>
								<h2 class="" align="center"> Login:</h2>
								</div>
							<div class="modal-body">
								<div class="box">
								<div class="content">
									<div class="error"></div>
										<div class="form loginBox">
											<form method="post" action="<c:url value='/autenticar'/>" accept-charset="UTF-8">
												<input id="email" class="form-control" type="text" placeholder="Usuário" name="usuario.login" value="${usuario.login}" required>
												<input id="password" class="form-control" type="password" placeholder="Senha" name="usuario.senha" value="${usuario.senha}" required>
												<input class="btn btn-default btn-login" type="submit" value="Entrar" onclick="">
											</form>
										</div>
									 </div>
								</div>
								<div class="box">
									<div class="content registerBox" style="display:none;">
										<div class="form">
											<form method="post" html="{:multipart=>true}" data-remote="true" action="/register" accept-charset="UTF-8">
												<input id="email" class="form-control" type="text" placeholder="Email" name="email">
												<input id="password" class="form-control" type="password" placeholder="Password" name="password">
												<input id="password_confirmation" class="form-control" type="password" placeholder="Repeat Password" name="password_confirmation">
												<input class="btn btn-default btn-register" type="submit" value="Create account" name="commit">
											</form>
										</div>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<div class="forgot login-footer">
								<span>
									 <a href="">Deseja criar uma conta?</a>
								</span>
								</div>
							</div>
					 </div>
			 </div>
	 </div>
	</div>
</div>

<footer class="footer col-sm-8 col-sm-offset-2">
	<div class="container-fluid">
		<nav class="pull-left">
		<ul>
			<li>
				<a href="#">Home</a>
			</li>
		</ul>
		</nav>
		<p class="copyright pull-right">&copy; 2016 EuVoluntário</p>
		</div>
</footer>
<body>
</html>