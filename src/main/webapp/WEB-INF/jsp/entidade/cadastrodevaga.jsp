<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Nova Vaga</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" >

</head>
<body>


		<div class="container-fluid">
			
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
			
			<h1>Cadastro de Nova Vaga</h1>
			<h2>Tamanho vai ser e estiliza��o vai ter arrumado depois, s� estou postando pro seu tempo ficar melhor e tu ja ir fazendo</h2>

	<form class="form-horizontal">
		<div class="form-group">
			<label>Nome da Vaga</label>
			<input type="text" name="nomevaga" class="form-control" />
		</div>
		
		<div class="form-group">
			<label>Quantidade de pessoas necessarias</label>
			<input type="number" name="quantidadepessoa" class="form-control" />
		</div>
		
		<div class="form-group">
			<label>Informe uma descri��o da vaga, o que o voluntario vai ter que desempenhar</label>
			<input type="text" name="descricao" class="form-control" />
		</div>
		
		<div class="form-group">
			<label>Qual � a importancia desta vaga (urgente, normal), descreva o porque. </label>
			<input type="text" name="importanciavaga" class="form-control" />
		</div>
		
		<div class="form-group col-md-12">
			<label>A vaga � presencial </label>
			<input type="radio" name="presencialsim" />Sim
			<input type="radio" name="presencialnao"  />N�o
		</div>
		
		
		<div class="form-group col-md-12">
			<label>Informe o estado e a cidade aonde a vaga ser� realizada </label><br />
			<select class="col-md-5">
				
				<option value="estado">Selecione o Estado</option> 
		<option value="ac">Acre</option> 
		<option value="al">Alagoas</option> 
		<option value="am">Amazonas</option> 
		<option value="ap">Amap�</option> 
		<option value="ba">Bahia</option> 
		<option value="ce">Cear�</option> 
		<option value="df">Distrito Federal</option> 
		<option value="es">Esp�rito Santo</option> 
		<option value="go">Goi�s</option> 
		<option value="ma">Maranh�o</option> 
		<option value="mt">Mato Grosso</option> 
		<option value="ms">Mato Grosso do Sul</option> 
		<option value="mg">Minas Gerais</option> 
		<option value="pa">Par�</option> 
		<option value="pb">Para�ba</option> 
		<option value="pr">Paran�</option> 
		<option value="pe">Pernambuco</option> 
		<option value="pi">Piau�</option> 
		<option value="rj">Rio de Janeiro</option> 
		<option value="rn">Rio Grande do Norte</option> 
		<option value="ro">Rond�nia</option> 
		<option value="rs">Rio Grande do Sul</option> 
		<option value="rr">Roraima</option> 
		<option value="sc">Santa Catarina</option> 
		<option value="se">Sergipe</option> 
		<option value="sp">S�o Paulo</option> 
		<option value="to">Tocantins</option> 
			</select>
				
				<input type="text" class="form-control col-md-5" placeholder="Informe a sua cidade"/>
		</div>
		
				<button type="submit" class="btn btn-default">Cadastrar Vaga</button>
	
		
		
	</form>

			
			</div>
					</div>
					
		</div>
	

</body>
</html>