package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
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
	
	@Path("/homeEntidade")
	public void homeEntidade(Usuario usuario) {
		Entidade entidade = usuario.getEntidades().get(0);
		result.include("entidade", entidade);		
	}
	
	@Get("/passaCodigo/{codigo},{tipo}")
	public void passaCodigo(Long codigo, String tipo){
		Usuario usuario = usuarioDAO.buscar(Usuario.class, codigo);
		result.include("usuario", usuario);
		System.out.println(tipo);
		
		switch (tipo) {
		case "perfil":
			result.redirectTo(this).perfilEntidade(usuario);
			break;
		case "inicio":
			result.redirectTo(this).homeEntidade(usuario);
		default:
			break;
		}
	}
	
	@Path("/perfilEntidade")
	public void perfilEntidade(Usuario usuario) {
		result.include("usuario", usuario);
		result.include("entidade", usuario.getEntidades().get(0));
		result.include("endereco", usuario.getEntidades().get(0).getEnderecos().get(0));
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
	
	@Get("/editarEntidade/{codigo}")
	public void editarEntidade(Long codigo) {
		Usuario usuario = usuarioDAO.buscar(Usuario.class, codigo);
		System.out.println("tou aqui como" + codigo);

		result.redirectTo(this).homeEntidade(usuario);
	}
	
}
