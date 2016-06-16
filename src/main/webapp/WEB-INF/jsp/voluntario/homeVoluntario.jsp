<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Voluntário - Bem-Vindo!!!</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="img/sidebar-5.jpg">

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
                <li class="active">
                    <a href="dashboard.html">
                        <i class="pe-7s-graph"></i>
                        <p>dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="user.html">
                        <i class="pe-7s-user"></i>
                        <p>Meu Perfil</p>
                    </a>
                </li>
                <li>
                    <a href="table.html">
                        <i class="pe-7s-note2"></i>
                        <p>Minhas Atuações</p>
                    </a>
                </li>


								<li>
										<a href="procurar_vaga.html">
												<i class="pe-7s-search"></i>
												<p>Procurar Vaga</p>
										</a>
								</li>

								<li>
										<a href="poletto_teste_1.html">
												<i class="pe-7s-magic-wand"></i>
												<p>Poletto Testes1</p>
										</a>
								</li>
								<li>
										<a href="poletto_teste_2.html">
												<i class="pe-7s-plane"></i>
												<p>Poletto Testes2</p>
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
                    <a class="navbar-brand" href="#">Dashboard</a>
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

									<div class="content">
								             <div class="container-fluid">
								                 <div class="row">
								                     <div class="col-md-12">
								                         <div class="card">
								                             <div class="header">
								                                 <h4 class="title">Últimas vagas que foram abertas</h4>
								                                 <p class="category">Veja abaixo as últimas vagas cadastradas em nosso site</p>
								                             </div>
								                             <div class="content table-responsive table-full-width">
								                                 <table class="table table-hover table-striped">
								                                     <thead>
								                                         <th>Vaga nº</th>
								                                     	<th>Nome</th>
								                                     	<th>Presencial?</th>
								                                     	<th>Estado</th>
								                                     	<th>Cidade</th>

																											<th>
																												Descrição
																											</th>
																											<th>
																												Ver
																											</th>
								                                     </thead>
								                                     <tbody>
								                                         <tr>
								                                         	<td>1</td>
								                                         	<td>Dakota Rice</td>
								                                         	<td>$36,738</td>
								                                         	<td>Niger</td>
								                                         	<td>Oud-Turnhout</td>
																													<td>
																														Aqui vai a descrição	Aqui vai a descrição
																													</td>
																													<td>
																														<a href="#">Quero me Candidatar!</a>
																													</td>
								                                         </tr>
								                                         <tr>
								                                         	<td>2</td>
								                                         	<td>Minerva Hooper</td>
								                                         	<td>$23,789</td>
								                                         	<td>Curaçao</td>
								                                         	<td>Sinaai-Waas</td>
																													<td>
																														Aqui vai a descrição	Aqui vai a descrição
																													</td>
																													<td>
																														<a href="#">Quero me Candidatar!</a>
																													</td>
								                                         </tr>
								                                         <tr>
								                                         	<td>3</td>
								                                         	<td>Sage Rodriguez</td>
								                                         	<td>$56,142</td>
								                                         	<td>Netherlands</td>
								                                         	<td>Baileux</td>
																													<td>
																														Aqui vai a descrição	Aqui vai a descrição
																													</td>
																													<td>
																														<a href="#">Quero me Candidatar!</a>
																													</td>
								                                         </tr>
								                                         <tr>
								                                         	<td>4</td>
								                                         	<td>Philip Chaney</td>
								                                         	<td>$38,735</td>
								                                         	<td>Korea, South</td>
								                                         	<td>Overland Park</td>
																													<td>
																														Aqui vai a descrição	Aqui vai a descrição
																													</td>
																													<td>
																														<a href="#">Quero me Candidatar!</a>
																													</td>
								                                         </tr>
								                                         <tr>
								                                         	<td>5</td>
								                                         	<td>Doris Greene</td>
								                                         	<td>$63,542</td>
								                                         	<td>Malawi</td>
								                                         	<td>Feldkirchen in Kärnten</td>
																													<td>
																														Aqui vai a descrição	Aqui vai a descrição
																													</td>
																													<td>
																														<a href="#">Quero me Candidatar!</a>
																													</td>
								                                         </tr>
								                                         <tr>
								                                         	<td>6</td>
								                                         	<td>Mason Porter</td>
								                                         	<td>$78,615</td>
								                                         	<td>Chile</td>
								                                         	<td>Gloucester</td>
																													<td>
																														Aqui vai a descrição	Aqui vai a descrição
																													</td>
																													<td>
																														<a href="#">Quero me Candidatar!</a>
																													</td>
								                                         </tr>
								                                     </tbody>
								                                 </table>

								                             </div>
								                         </div>
								                     </div>
																	 </div>






            </div>
        </div>



				<br>




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
