<!doctype html>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>${usuario.codigo}</title>

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

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


    	<div class="sidebar-wrapper">

				<div class="logo">
						<a href="" class="simple-text">
								Eu Voluntário
						</a>
				</div>
            <ul class="nav">
                <li>
                    <a href="dashboard.html">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="">
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
										<a href="procura_vaga.html">
												<i class="pe-7s-search"></i>
												<p>Procurar Vaga</p>
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
                    <a class="navbar-brand" href="#">Candidatar-se</a>
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
                                <h4 class="title">Candidatar-se a Vaga</h4>
																<br>
																<p class="category">
																	Observe abaixo todos os dados da vaga, caso tenha certeza clique em candidatar-se.
																</p>
                            </div>
                            <div class="content">
                                <form>
                                    <div class="row">
																			<div class="col-md-6">
																					<div class="form-group">
																							<label>Nome da ONG</label>
																							<input type="text" class="form-control" placeholder="Aqui tem que aparecer o nome" disabled="">
																					</div>
																			</div>

																			<div class="col-md-6">
																					<div class="form-group">
																							<label>Email da ONG</label>
																							<input type="email" class="form-control" placeholder="vai o email da ong" disabled="">
																					</div>
																			</div>


                                    </div>

																		<div class="row">
																			<div class="col-md-6">
																					<div class="form-group">
																							<label>Nome da Vaga</label>
																							<input type="text" class="form-control" placeholder="Aqui o nome da vaga" disabled="">
																					</div>
																			</div>


                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Vaga Presencial ?</label>
                                                <input type="text" class="form-control" placeholder="Aqui vai sim ou não" disabled="" >
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Estado</label>
                                                <input type="text" class="form-control" placeholder="Aqui vai o estado" disabled="" >
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Cidade</label>
                                                <input type="text" class="form-control" placeholder="vai a cidade" disabled="">
                                            </div>
                                        </div>
                                    </div>

																		<div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Descrição</label>
                                                <textarea name="name" rows="2" cols="40" class="form-control" disabled=""></textarea>
                                            </div>
                                        </div>

                                    </div>





                                    <button type="submit" class="btn btn-info btn-fill pull-right">Quero Me Candidatar</button>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
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

</html>
