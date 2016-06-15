<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Light Bootstrap Dashboard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" />

	<script type="text/javascript">
     	function trocaUrgencia() {
     		var e = document.getElementById("listaUrgencia");
     		var strUrgencia = e.options[e.selectedIndex].text;
			document.getElementById("vaga.importancia").value = strUrgencia;
		}
     	function trocaCidade(){
     		var e = document.getElementById("cidade");
			document.getElementById("vaga.cidade").value = e.options[e.selectedIndex].text;

			var f = document.getElementById("estado");
			document.getElementById("vaga.estado").value = f.options[f.selectedIndex].text;
     	}
     	function trocaSim() {
     		var radiobtn = document.getElementById("vaga.nao");
     		radiobtn.checked = false;
     		document.getElementById("vaga.presencial").value = "Sim";
		}
     	function trocaNao() {
     		var radiobtn = document.getElementById("vaga.sim");
     		radiobtn.checked = false;
     		document.getElementById("vaga.presencial").value = "Não";
		}
     	
    </script>

</head>



<body>
<div class="wrapper">
    <div class="sidebar" data-color="gray" data-image="img/sidebar-3.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

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
            <li>
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


            <li class="active">
					<a href="<c:url value='/passaCodigo/${entidade.usuario.codigo},${"cadastrarVaga"}'/>">
                    <i class="pe-7s-search"></i>
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
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Cadastrar nova vaga</a>
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
<br>
        <div class="content card col-sm-10 col-sm-offset-1">
            <div class="container-fluid">
            	<div class="row">
                	<div class="col-sm-12 col-sm-offset-1 col-md-10 main">
                    	<h1 class="page-header">Cadastro de Nova Vaga</h1>
                    	<h2>Complete os campos abaixo:</h2>
                    	<form class="form-horizontal" action="<c:url value='/salvarVaga'/>" method="post" >
                    	    <input type="hidden" name="usuario.codigo" value="${usuario.codigo}" />
            				<div class="form-group">
              					<label class="col-sm-2">Nome
								<br>
								 da Vaga</label>
              				<div class="col-sm-10">
                				<input type="text" class="form-control" name="vaga.nomeVaga" value="${vaga.nomeVaga}" placeholder="Nome da Vaga">
              				</div>
            				</div>
							<div class="form-group">
                				<label  class="col-sm-2">
								Voluntários
								<br>
								 necessários</label>
                			<div class="col-sm-10">
                  				<input type="number" class="form-control" name="vaga.quantidadePessoa" value="${vaga.quantidadePessoa}" placeholder="Quantidade de vagas disponiveis">
                			</div>
                			</div>
							<div class="form-group">
                  				<label class="col-sm-2">Urgência</label>
                  				<div class="col-sm-10">
                  				<select class="col-sm-12" name="urgencia" onchange="trocaUrgencia()" id="listaUrgencia">
									<option value="option">Por favor selecione a urgência da vaga</option>
                   					<option value="option">Muito Importante - Precisamos de voluntários urgentemente</option>
                    				<option value="option">Normal</option>
                  				</select>
                  				<input type="hidden" id="vaga.importancia" name="vaga.importancia" value="${vaga.importancia}" />
                  </div>
                </div>

                <div class="form-group">
                  <label  class="col-sm-2">Vaga presencial</label>
                  <div class="col-sm-10">
                    <br>
                    <input type="radio"  id="vaga.sim" name="vagapresencialsim" onclick="trocaSim()">     Sim
                    <input type="radio" id="vaga.nao" name="vagapresencialnao" onclic="trocaNao()">     Não
                    <input type="text" id="vaga.presencial" name="vaga.presencial" value="${vaga.presencial}" />
                  </div>
                  </div>

                  <div class="form-group form-inline">
                    <label  class="col-sm-2">UF/CIDADE</label>

<div class="col-sm-10">
  <fieldset>
<select id="cidade" name="cidade" class="col-sm-6"  onchange="trocaCidade()" ></select>
<input type="hidden" name="vaga.cidade" id="vaga.cidade" value="${vaga.cidade}" />
<select id="estado" name="estado" class="col-sm-6" onchange="trocaUf()" ></select>
<input type="hidden" name="vaga.estado" id="vaga.estado" value="${vaga.estado}" />
</fieldset>
</div>

                    </div>

                    <script type="text/javascript" src="http://cidades-estados-js.googlecode.com/files/cidades-estados-v0.2.js"></script>
                    <script type="text/javascript">
    window.onload = function() {
        new dgCidadesEstados(
            document.getElementById('estado'),
            document.getElementById('cidade'),
            true
        );
    }
</script>

                  <div class="form-group">
                    <label  class="col-sm-2">Descrição da
<br>
											 Vaga</label>
                    <div class="col-sm-10">
                    <textarea name="vaga.descricao" value="${vaga.descricao}" placeholder="Descreva o que o voluntário vai ter que fazer, seja o mais detalhista possivel..." class="form-control" rows="3"></textarea>

                    </div>
                    </div>

                    <div class="form-group">
                      <label  class="col-sm-2">
<br>
<br>
												Data de Validade</label>
                      <div class="col-sm-10">
                        <br>
                        <input type="date" name="vaga.dataCadastro" value="${vaga.dataCadastro}" class="form-control">

                      </div>
                      </div>


                      <div class="form-group">

          <label class="col-sm-2"></label>
                        <button type="submit" class="btn btn-default">Cadastrar Vaga</button>
                    </div>


            </form>


                  </div>
                </div>
            </div>
        </div>


<br>
        <footer class="footer col-sm-12">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>

                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; 2016 EuVoluntário
                </p>
            </div>
        </footer>

    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="js/bootstrap-checkbox-radio-switch.js"></script>

	<!--  Charts Plugin -->
	<script src="js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="js/demo.js"></script>


</html>