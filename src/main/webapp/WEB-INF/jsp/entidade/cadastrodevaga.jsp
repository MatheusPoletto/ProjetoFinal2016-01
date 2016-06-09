<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Eu Voluntário</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Perfil</a></li>
            <li><a href="#">Sair</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Cadastrar Vaga</a></li>
            <li><a href="#">Minhas Vagas Cadastradas</a></li>
            <li><a href="#">Vagas em atuação</a></li>
            <li><a href="#">Atuações concluidas</a></li>
          </ul>

        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Cadastro de Nova Vaga</h1>

          <h2>Complete os campos abaixo:</h2>

          <form class="form-horizontal">
  <div class="form-group">
    <label class="col-sm-2 control-label">Nome da Vaga</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="nomevaga" placeholder="Nome da Vaga">
    </div>
  </div>

    <div class="form-group">
      <label  class="col-sm-2 control-label">Voluntários necessários</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" name="quantidadevagas" placeholder="Quantidade de vagas disponiveis">
      </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Urgencia da Vaga</label>
        <div class="col-sm-10">

        <select class="col-sm-12" name="urgencia">

          <option value="option">Por favor selectione a urgencia da vaga</option>
          <option value="option">Muito Importante - Precisamos de voluntários urgentemente</option>
          <option value="option">Normal</option>
        </select>
        </div>
      </div>

      <div class="form-group">
        <label  class="col-sm-2 control-label">A vaga é presencial?</label>
        <div class="col-sm-10">
          <br>
          <input type="radio"  name="vagapresencialsim">     Sim
          <input type="radio"  name="vagapresencialnao">     Não
        </div>
        </div>

        <div class="form-group">
          <label  class="col-sm-2 control-label">UF/CIDADE</label>
          <div class="col-sm-10">

<input type="text" name="lugar" class="form-control"  placeholder="Informe o Estado e a cidade aonde vai ocorrer">
          </div>
          </div>

        <div class="form-group">
          <label  class="col-sm-2 control-label">Descrição da Vaga</label>
          <div class="col-sm-10">
          <textarea name="descricao" placeholder="Descreva o que o voluntário vai ter que fazer, seja o mais detalhista possivel..." class="form-control"></textarea>

          </div>
          </div>

          <div class="form-group">
            <label  class="col-sm-2 control-label">Até que dia a vaga deve ficar cadastrada no site?</label>
            <div class="col-sm-10">
              <br>
              <input type="date"  name="vagapresencialsim" class="form-control">

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

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="js/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
