package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.EntidadeDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Voluntario;

@Controller
public class AcessoController {

	@Inject
	private UsuarioDAO usuarioDAO;

	@Inject
	private Result result;

	@Inject
	private Validator validator;

	@Path("/index")
	public void index() {
		result.include("variable", "");
	}

	@Post("/autenticarUsuario")
	public void autenticarUsuario(Usuario usuario) {
		if (usuario != null) {
			Usuario usuarioBusca = usuarioDAO.buscarUsuario(usuario.getLogin());
			if (usuarioBusca == null) {
				 result.include("mensagem", "<div class=\"alert alert-danger\" role=\"alert\">Usuário não encontrado!</div>");
				result.redirectTo("/cadastro");
			} else {
				if (usuarioBusca.getSenha().equals(usuario.getSenha())) {
					if (!(usuarioBusca.getEntidade() == null)) {// SE FOR ENTIDADE
						result.redirectTo(EntidadeController.class).index(usuarioBusca);
					} else {// SE TIVER ELE EH VOLUNTARIO
						result.redirectTo(VoluntarioController.class).homeVoluntario(usuarioBusca);
					}
				} else {
			        result.include("mensagem", "<div class=\"alert alert-danger\" role=\"alert\">Senha incorreta!</div>");
					result.redirectTo("/cadastro");
				}
			}
		}
	}

}
