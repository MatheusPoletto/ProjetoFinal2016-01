package br.com.caelum.vraptor.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.AtuacaoDAO;
import br.edu.unoesc.dao.AvatarDAO;
import br.edu.unoesc.dao.EnderecoDAO;
import br.edu.unoesc.dao.EntidadeDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.dao.VagaDAO;
import br.edu.unoesc.dao.VoluntarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Avatar;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Vaga;
import br.edu.unoesc.model.Voluntario;

@ApplicationScoped
@Controller
public class VoluntarioController {

	@Inject
	private UsuarioDAO usuarioDAO;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;

	private Usuario usuarioSessao = new Usuario();
	
	private Vaga vagaInteresse = new Vaga();
	
	public void index(Usuario usuario) {
		this.usuarioSessao = usuario;
		result.redirectTo(this).homeVoluntario();
	}
	
	@Post("/cadastrarVoluntario")
	public void cadastrarVoluntario(Usuario usuario, Voluntario voluntario) {
		Usuario usuarioExistente = usuarioDAO.buscarUsuario(usuario.getLogin());
		if(usuarioExistente == null){
			try {
				voluntario.setUsuario(usuario);
				Avatar avatar = new Avatar(null);
				avatar.setUsuario(usuario);
				
				VoluntarioDAO voluntarioDao = new VoluntarioDAO();
				AvatarDAO avatarDao = new AvatarDAO();
				usuarioDAO.salvar(usuario);
				avatarDao.salvar(avatar);
				voluntarioDao.salvar(voluntario);
				result.redirectTo(IndexController.class).precisaMensagem("SUCESSO");
			} catch (DAOException e) {
				result.redirectTo(IndexController.class).precisaMensagem("ALERTA_LOGIN_EXISTE");
			}
		}else{
			result.redirectTo(IndexController.class).precisaMensagem("ALERTA_LOGIN_EXISTE");
		}
	}
	
	@Path("/homeVoluntario")
	public void homeVoluntario() {
		this.usuarioSessao = usuarioDAO.buscar(Usuario.class, usuarioSessao.getCodigo());
		
		VagaDAO vagaDao = new VagaDAO();
		result.include("vagasDisponiveis", vagaDao.vagasDisponiveisVoluntario());
		result.include("usuario", usuarioSessao);
	}
	
	@Get("/voluntarioVerVaga/{codigo}")
	public void voluntarioVerVaga(Long codigo) {
		VagaDAO vagaDao = new VagaDAO();
		this.vagaInteresse = vagaDao.buscar(Vaga.class, codigo);
		result.redirectTo(this).interesseVoluntario();
	}
	
	@Path("/interesseVoluntario")
	public void interesseVoluntario() {	
		result.include("vaga", this.vagaInteresse);
	}
	
	@Get("/interesseVoluntarioInscricao")
	public void interesseVoluntarioInscricao() throws DAOException {	
		Atuacao atuacao = new Atuacao("Aguardando confirmação", usuarioSessao.getVoluntarios().get(0), this.vagaInteresse, new Date(Calendar.getInstance().getTime().getTime()));
		VagaDAO vagaDao = new VagaDAO();
		this.vagaInteresse.adicionarAtuacao(atuacao);
		vagaDao.salvar(this.vagaInteresse);
		
		result.redirectTo(this).homeVoluntario();
	}
}

