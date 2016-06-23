<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

	<p class="pull-right">
		<a href="#">Voltar para o topo.</a>
	</p>
	
	<p>Eu Voluntário - 2016</p>

</footer>
</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write(
								'<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.min.js"></script>
	<script src="../../assets/js/vendor/holder.min.js"></script>
	<script src="js/ie10-viewport-bug-workaround.js"></script>
<div class="container">
	<div class="row">
		<div class="modal fade login" id="loginModal">
			<div class="modal-dialog login animated">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<br>
							<h2 class="" align="center">Login</h2>
						</div>
						<div class="modal-body">
							<div class="box">
								<div class="content">
									<div class="error"></div>
									<div class="form loginBox">
										<form action="<c:url value="/autenticarUsuario"/>" method="post" accept-charset="UTF-8">
											<input id="email" class="form-control" type="text" placeholder="Usuário" name="usuario.login" value="${usuario.login}" required>
												<input id="password" class="form-control" type="password" placeholder="Senha" name="usuario.senha" value="${usuario.senha}" required>
												<input class="btn btn-default btn-login" type="submit" value="Entrar" onclick="">										

										</form>
									</div>
								</div>
							</div>
							<div class="box">
								<div class="content registerBox" style="display: none;">
									<div class="form">
										<form method="post" html="{:multipart=>true}" data-remote="true" action="/register" accept-charset="UTF-8">
											<input id="email" class="form-control" type="text" placeholder="Email" name="email">
											<input id="password" class="form-control" type="password" placeholder="Password" name="password">
											<input id="password_confirmation" class="form-control" type="password" placeholder="Repeat Password" name="password_confirmation"> 
											<input class="btn btn-default btn-register" type="submit" value="Create account" name="commit">
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<div class="forgot login-footer">
								<span><a href="<c:url value="/cadastro"/>">Deseja criar uma conta? É de graça!</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
</body>
</html>
