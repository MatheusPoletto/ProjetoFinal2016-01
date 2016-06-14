<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>Meu Perfil</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>
    <link href="css/demo.css" rel="stylesheet" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>
	<div class="wrapper">
    	<div class="sidebar" data-color="gray" data-image="img/sidebar-3.jpg">
    		<div class="sidebar-wrapper">
				<div class="logo">
						<a href="" class="simple-text">
								Eu Voluntário
						</a>
				</div>
            <ul class="nav">
                <li>
                    <a href="<c:url value='/passaCodigo/${usuario.codigo},${"inicio"}'/>">
                    	<i class="pe-7s-graph"></i>
                    	<p>Principal</p>
                    </a>
                </li>
                <li class="active">
                    <a href="<c:url value='/passaCodigo/${usuario.codigo},${"perfil"}'/>">
                        <i class="pe-7s-user"></i>
                        <p>Meu Perfil</p>
                    </a>
                </li>
                <li>
                    <a href="table.html">
                        <i class="pe-7s-note2"></i>
                        <p>Minhas Vagas</p>
                    </a>
                </li>
				<li>
					<a href="cadastrar_vaga.html">
						<i class="pe-7s-portfolio"></i>
						<p>Cadastrar Nova Vaga</p>
					</a>
				</li>
            </ul>
    	</div>
    </div>
    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Meu Perfil</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left"></ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">
                                Deslogar
                            </a>
                        </li>
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
                                	<input type="hidden" name="usuario.codigo" value="${usuario.codigo}" />
                                  	<input type="hidden" name="entidade.fotoEntidade" value="" id="novoCaminho"/>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Entidade</label>
                                                <input type="text" class="form-control" name="entidade.nomeEntidade" disabled placeholder="Entidade" value="${entidade.nomeEntidade}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Usuário</label>
                                                <input type="text" class="form-control" name="usuario.login" placeholder="Usuário" value="${usuario.login}" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email</label>
                                                <input type="email" class="form-control" name="entidade.email" placeholder="Email" value="${entidade.email}">
                                            </div>
                                        </div>
                                    </div>
                                   	<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Rua</label>
												<input type="text" class="form-control" name="endereco.rua" placeholder="Rua" value="${endereco.rua}">
											</div>
										</div>
										<div class="form-group col-md-4">
											<label>Bairro</label>
											<input type="text" class="form-control" name="endereco.bairro" placeholder="Bairro" value="${endereco.bairro}">
										</div>
										<div class="form-group col-md-2">
											<label>Nº</label>
											<input type="text" class="form-control" name="endereco.numero" placeholder="Nº" value="${endereco.numero}">
										</div>
									</div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Cidade</label>
                                                <input type="text" class="form-control" name="endereco.cidade" placeholder="Cidade" value="${endereco.cidade}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>UF</label>
                                                <input type="text" class="form-control" name="endereco.uf" placeholder="Unidade Federativa" value="${endereco.uf}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>CEP</label>
                                                <input type="number" class="form-control" name="endereco.cep" placeholder="CEP" value="${endereco.cep}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
										<div class="col-sm-12">
											<div class="form-group">
												<label>Area de atuação</label>
												<input type="text" name="entidade.areaAtuacao" value="${entidade.areaAtuacao}" class="form-control" placeholder="Aqui vai a area de atuação">
											</div>
										</div>
									</div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Sobre</label>
                                                <textarea rows="5" class="form-control" placeholder="Descricação da entidade" name="entidade.descricao" value="Descrição">${entidade.descricao}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-info btn-fill pull-right">Salvar alterações</button>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                	<a href="#">
                                    	<img class="avatar border-gray" src="img/faces/face-3.jpg" alt="..."/>
                                    	<h4 class="title">${entidade.nomeEntidade}<br />
                                    	<small>${usuario.login}</small>
                                    	</h4>
                                   	</a>
                                </div>
                                <p class="description text-center">"${entidade.descricao}"</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <p class="copyright pull-right">&copy; 2016 EuVoluntário</p>
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
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
	<script src="js/light-bootstrap-dashboard.js"></script>
	<script src="js/demo.js"></script>	
</html>
