 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Perfil</title>
</head>

<c:import url="cabecalho.jsp"/>
<body>
 
	<div class="wrapper">
    	 <c:import url="menu.jsp"/>
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
                            <a href="<c:url value='/cadastro'/>">Deslogar</a>
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
                            
                                  	<input type="hidden" name="usuario.entidade.fotoEntidade" value="" id="novoCaminho"/>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Entidade</label>
                                                <input type="text" class="form-control" name="usuario.entidade.nomeEntidade" disabled placeholder="Entidade" value="${usuario.entidade.nomeEntidade}">
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
                                                <input type="email" class="form-control" name="usuario.entidade.email" placeholder="Email" value="${usuario.entidade.email}">
                                            </div>
                                        </div>
                                    </div>
                                   	<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Rua</label>
												<input type="text" class="form-control" name="usuario.entidade.endereco.rua" placeholder="Rua" value="${usuario.entidade.endereco.rua}">
											</div>
										</div>
										<div class="form-group col-md-4">
											<label>Bairro</label>
											<input type="text" class="form-control" name="usuario.entidade.endereco.bairro" placeholder="Bairro" value="${usuario.entidade.endereco.bairro}">
										</div>
										<div class="form-group col-md-2">
											<label>Nº</label>
											<input type="text" class="form-control" name="usuario.entidade.endereco.numero" placeholder="Nº" value="${usuario.entidade.endereco.numero}">
										</div>
									</div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Cidade</label>
                                                <input type="text" class="form-control" name="usuario.entidade.endereco.cidade" placeholder="Cidade" value="${usuario.entidade.endereco.cidade}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>UF</label>
                                                <input type="text" class="form-control" name="usuario.entidade.endereco.uf" placeholder="Unidade Federativa" value="${usuario.entidade.endereco.uf}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>CEP</label>
                                                <input type="number" class="form-control" name="usuario.entidade.endereco.cep" placeholder="CEP" value="${usuario.entidade.endereco.cep}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
										<div class="col-sm-12">
											<div class="form-group">
												<label>Area de atuação</label>
												<input type="text" name="entidade.areaAtuacao" value="${usuario.entidade.areaAtuacao}" class="form-control" placeholder="Aqui vai a area de atuação">
											</div>
										</div>
									</div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Sobre</label>
                                                <textarea rows="5" class="form-control" placeholder="Descricação da entidade" name="usuario.entidade.descricao" value="Descrição">${usuario.entidade.descricao}</textarea>
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
                                    	<img class="avatar border-gray" src="img/def-user.png" alt="..."/>
                                    	<h4 class="title">${usuario.entidade.nomeEntidade}<br />
                                    	<small>${usuario.login}</small>
                                    	</h4>
                                   	</a>
                                </div>
                                <p class="description text-center">"${usuario.entidade.descricao}"</p>
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
