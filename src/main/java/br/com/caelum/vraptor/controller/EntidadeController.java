package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Endereco;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Usuario;

@Controller
public class EntidadeController {
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
	
	@Post("/cadastrarEntidade")
	public void cadastrarEntidade(Usuario usuario, Entidade entidade, Endereco endereco) {
		if (usuario != null) {
			try {
				entidade.setUsuario(usuario);
				entidade.adicionarEndereco(endereco);
				endereco.setEntidade(entidade);
				usuario.adcionarEntidade(entidade);
				usuarioDAO.salvar(usuario);
			} catch (DAOException e) {
				
			}
		}
		result.redirectTo("/");
	}
}
