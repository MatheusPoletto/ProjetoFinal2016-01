 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Cadastrar vaga</title>
</head>

<body>
<c:import url="cabecalho.jsp"/>
${atuacao.codigo}

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
                    <a class="navbar-brand" href="#">Dados do Voluntário</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">



                    </ul>

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
                    <div class="col-md-12">
                        <div class="card">

													 <div class="header">
                                <h4 class="title">Dados do Possivel Voluntário</h4>
																<br>
																<p class="category">
																	Observe abaixo os dados do voluntário e entre em contato com o mesmo por email ou telefone
																	para combinarem eu não sei como teminar essa frase, então estou escrevendo isto para ver
																	se o Poletto olha o que eu mando para ele.
																</p>
                            </div>

													<div class="content">
															<form>
																	<div class="row">
																		<div class="col-md-6">
																				<div class="form-group">
																						<label>Vaga Nº</label>
																						<input type="number" class="form-control" placeholder="Aqui tem que aparecer o numero da vaga" disabled="">
																				</div>
																		</div>

																		<div class="col-md-6">
																				<div class="form-group">
																						<label>Nome da Vaga</label>
																						<input type="text" class="form-control" placeholder="Aqui vai o nome da vaga" disabled="">
																				</div>
																		</div>


																	</div>

																	<div class="row">
																		<div class="col-md-6">
																				<div class="form-group">
																						<label>Nome do Possivel Voluntario</label>
																						<input type="text" class="form-control" placeholder="Aqui o nome do voluntário" disabled="">
																				</div>
																		</div>


																			<div class="col-md-6">
																					<div class="form-group">
																							<label>Email do Voluntarío</label>
																							<input type="email" class="form-control" placeholder="Aqui vai o email do voluntário" disabled="" >
																					</div>
																			</div>

																	</div>

																	<div class="row">
																		<div class="col-md-6">
																				<div class="form-group">
																						<label>Telefone do Voluntário</label>
																						<input type="tel" class="form-control" placeholder="Aqui vai o telefone do voluntario." disabled="">
																				</div>
																		</div>


																			<div class="col-md-6">
																					<div class="form-group">
																							<label>Idade do Voluntário</label>
																							<input type="number" class="form-control" placeholder="Aqui vai a idade do Voluntario" disabled="" >
																					</div>
																			</div>

																	</div>

<a href="#">Voltar para a página principal.</a>
																	<div class="clearfix"></div>
															</form>
													</div>
                        </div>
                    </div>


                </div>




        </div>


        <footer class="footer">
            <div class="container-fluid">
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

	<script type="text/javascript">
    	$(document).ready(function(){

        	demo.initChartist();



    	});
	</script>

</html>
