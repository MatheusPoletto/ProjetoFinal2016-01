 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Cadastrar vaga</title>

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
     	function trocaPresencial(){
     		var e = document.getElementById("presencial");
			document.getElementById("vaga.presencial").value = e.options[e.selectedIndex].text;
     	}
     	
    </script>
</head>

<body>
<c:import url="cabecalho.jsp"/>
<div class="wrapper">
	<c:import url="menu.jsp"/>
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
                				<label  class="col-sm-2">
								Quantidade
								<br>
								 de vaga</label>
                			<div class="col-sm-10">
                  				<input type="number" class="form-control" name="vaga.quantidadeVaga" value="${vaga.quantidadeVaga}" placeholder="Quantidade de vagas que serão abertas">
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
                  				<select class="col-sm-12" name="presencial" onchange="trocaPresencial()" id="presencial">
                  					<option value="option">Por favor selecione a modalidade</option>
                   					<option value="option">Sim</option>
                    				<option value="option">Não</option>
                  				</select>
                  				<input type="hidden" id="vaga.presencial" name="vaga.presencial" value="${vaga.presencial}" />
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
                        <input type="text" name="vaga.dataValidade" value="${vaga.dataValidade}" class="form-control">

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

<c:import url="rodape.jsp"/>