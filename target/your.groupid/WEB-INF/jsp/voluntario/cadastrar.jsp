<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" >
		<link rel="stylesheet" type="text/css" href="css/media.css" />
		<link rel="stylesheet" type="text/css" href="css/sprite.css" />
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
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
</head>
<body>


<div class="container-fluid">
			
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-5 col-md-offset-1">
						<h1>Cadastro de novo usuario</h1>
		<p>Por favor, escolha como você deseja se cadastrar:</p> 
	Ong	<input type="radio" name="optradio" onclick="tipoSelecionado()" id="radioOng">
	Voluntario <input type="radio" name="optradio" onclick="tipoSelecionado()" id="radioVoluntario">
		
		
		
		
		<div id="formVoluntario">
		<form>
			<h2>Cadastro de novo Voluntario:</h2> <br />
			<div class="form-group">
			<label>Nome Completo:	</label><input type="text" name="nomeVoluntario" class="form-control" /> 
			</div>
			
		
			
				<div class="form-group">
		<label>Telefone: </label>	 <input type="tel" name="telefoneVoluntario" class="form-control" /> 
			
		</div>
			
			<div class="form-group">
		<label>Idade: </label>		<input type="number" name="nomeVoluntario" class="form-control" /> 
			</div>
			
			
		
			
	
			
		<div class="form-group">
			<label>Email</label>  <input type="email" name="emailVoluntario"  class="form-control"/> 
		</div>
		
	<div class="form-group">
		<label>Login</label>  <input type="text" name="loginVoluntario" class="form-control" />
	</div>
	
	<div class="form-group">
		<label>Senha</label>  <input type="password" name="senhaVoluntario" class="form-control"/>
	</div>
	

	
	
		
			<button type="submit" class="btn btn-default" >Cadastrar</button>
		</form>
		</div>
		
		
		
		
		<div id="formOng">
			<h2>Cadastro de Nova Organização:</h2>
		<form>
			
			<div class="form-group">
			<label>Nome da Ong:</label>		<input type="text" name="nomeOng" class="form-control"/> 
				
			</div>
			
			
			<div class="form-group">
				<label>Telefone: </label>			<input type="tel" name="telefoneOng" class="form-control"/> 
				
			</div>
			
		
			
		<div class="form-group">
				
			<label>Email</label>			 <input type="email" name="emailOng" class="form-control"/> 
			</div>
			
			<div class="form-group">
				
			<label>Login</label>				
			 <input type="text" name="loginONg" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>Senha</label>		
				<input type="password" name="senhaOng" class="form-control" />
			</div>
			
			<div class="form-group">
				<label>Por favor descreva a area de atuação de sua Ong: </label>
					<textarea class="form-control" rows="3" name="descricaoOng"></textarea>

			</div>
			
			
			
			<h3>Agora por favor informe o endereço da sua instituição:</h3>
			<div class="form-group">
				
			<label>Rua</label>		<input type="text" name="ruaOng" class="form-control" /> 
			</div>
			
		<div class="form-group">
		<label>Bairro</label>		 <input type="text" name="bairroOng" class="form-control" /> 
				
			</div>
		
		<div class="form-group">
			<label>Numero</label>	<input type="text" name="numeroOng" class="form-control"/>
				
			</div>
			<div class="form-group">
				<label>cidade</label>
				 <input type="text" name="cidadeOng" class="form-control"/> 
			</div>
			
			
			
			
				<div class="form-group">
			 <label>UF </label>		<input type="text" name="ufOng" class="form-control"/> 
				
			</div>
		
			<div class="form-group">
				<label>cep </label>
				 <input type="text" name="cepOng" class="form-control"/>
			</div>
			
			
		
			
				<button type="submit" class="btn btn-default">Cadastrar</button>
	</form>
	</div>
						
					</div>
					
					<div class="col-md-5 col-md-offset-1">
						
						<div class="col-md-10">
							<h1>Já é cadastrado?</h1>
						<br />
						<h1>Por favor realize o seu login:</h1>
						
						<br />
							<form>
							<div class="form-horizontal">
								
								<div class="form-group">	<label>Login     </label>	<input type="text"  class="form-control"/></div>
							<div class="form-group"><label>Senha    </label> <input type="password" class="form-control" /> </div>
							<div class="form-group">
							
									<button type="submit" class="btn btn-default">Realizar Login</button>
							</div>
							
							</div>
							
							
							
						
						</form>
						</div>
						
					
					</div>
				</div>
			</div>
		</div>
		

</body>
</html>