package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.dao.VoluntarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Voluntario;

@Controller
public class VoluntarioController {

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
	
	@Post("/cadastrarVoluntario")
	public void cadastrarVoluntario(Usuario usuario, Voluntario voluntario) {
		if (usuario != null) {
			try {
				voluntario.setUsuario(usuario);
				usuario.adcionarVoluntario(voluntario);
				usuarioDAO.salvar(usuario);
			} catch (DAOException e) {
				
			}
		}
		result.redirectTo("/");
	}
	
	@Path("/homeVoluntario")
	public void homeVoluntario(Usuario usuario) {
		usuario = usuarioDAO.buscar(Usuario.class, usuario.getCodigo());
		Voluntario voluntario = usuario.getVoluntarios().get(0);
		result.include("voluntario", voluntario);		
	}
	
	@Get("/passaCodigo/{codigo},{tipo}")
	public void passaCodigo(Long codigo, String tipo){
		Usuario usuario = usuarioDAO.buscar(Usuario.class, codigo);
		result.include("usuario", usuario);
		System.out.println(tipo);
		
		switch (tipo) {
		case "perfil":
			//result.redirectTo(this).perfilEntidade(usuario);
			break;
		case "inicio":
			result.redirectTo(this).homeVoluntario(usuario);
			break;
		case "cadastrarVaga":
			//result.redirectTo(this).cadastrarVaga(usuario);
		default:
			break;
		}
	}
	
/*
	@Get("/home")
	public void home() {
		if (pessoa != null) {
			result.include("pessoa", pessoa);
		}
		result.include("mensagem", "Olá Mundo");
	}

	@Post("/cadastrar")
	public void cadastrar(Pessoa pessoa) {
		if (pessoa != null) {
			try {
				pessoaDao.salvar(pessoa);
			} catch (DAOException e) {
				// validator.add(new Messages());
			}
		}
		result.include("agendaview", pessoaDao.listar(Pessoa.class));
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.pessoa = pessoaDao.buscar(Pessoa.class, codigo);
		result.forwardTo(PessoaController.class).home();
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Pessoa pes = pessoaDao.buscar(Pessoa.class, codigo);
		try {
			pessoaDao.excluir(pes);
			result.forwardTo(PessoaController.class).cadastrar(null);
		} catch (DAOException e) {
			validator.onErrorForwardTo(PessoaController.class).cadastrar(null);
		}
	}
*/
}

