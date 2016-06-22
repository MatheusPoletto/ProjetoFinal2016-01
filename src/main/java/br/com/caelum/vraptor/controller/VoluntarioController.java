package br.com.caelum.vraptor.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Base64;
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
import br.com.caelum.vraptor.observer.upload.UploadedFile;
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
import br.edu.unoesc.model.Endereco;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.GerenciadorImagem;
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

	private String erroSenha = "NAO";

	private Boolean temCodigo() {
		if (usuarioSessao.getCodigo() != null) {
			return true;
		} else {
			result.redirectTo(AcessoController.class).redirecionaLogin();
			return false;
		}
	}

	public void index(Usuario usuario) {
		this.usuarioSessao = usuario;
		result.redirectTo(this).homeVoluntario();
	}

	@Post("/cadastrarVoluntario")
	public void cadastrarVoluntario(Usuario usuario, Voluntario voluntario) {
		if (temCodigo()) {
			Usuario usuarioExistente = usuarioDAO.buscarUsuario(usuario
					.getLogin());
			if (usuarioExistente == null) {
				try {
					voluntario.setUsuario(usuario);
					Avatar avatar = new Avatar(null);
					avatar.setUsuario(usuario);

					VoluntarioDAO voluntarioDao = new VoluntarioDAO();
					AvatarDAO avatarDao = new AvatarDAO();
					usuarioDAO.salvar(usuario);
					avatarDao.salvar(avatar);
					voluntarioDao.salvar(voluntario);
					result.redirectTo(IndexController.class).precisaMensagem(
							"SUCESSO");
				} catch (DAOException e) {
					result.redirectTo(IndexController.class).precisaMensagem(
							"ALERTA_LOGIN_EXISTE");
				}
			} else {
				result.redirectTo(IndexController.class).precisaMensagem(
						"ALERTA_LOGIN_EXISTE");
			}
		}
	}

	@Path("/homeVoluntario")
	public void homeVoluntario() {
		if (temCodigo()) {
			this.usuarioSessao = usuarioDAO.buscar(Usuario.class,
					usuarioSessao.getCodigo());

			VagaDAO vagaDao = new VagaDAO();
			result.include("vagasDisponiveis",
					vagaDao.vagasDisponiveisVoluntario());
			result.include("usuario", usuarioSessao);
		}
	}

	@Get("/voluntarioVerVaga/{codigo}")
	public void voluntarioVerVaga(Long codigo) {
		if (temCodigo()) {
			VagaDAO vagaDao = new VagaDAO();
			this.vagaInteresse = vagaDao.buscar(Vaga.class, codigo);
			result.redirectTo(this).interesseVoluntario();
		}
	}

	@Path("/interesseVoluntario")
	public void interesseVoluntario() {
		if (temCodigo()) {
			result.include("vaga", this.vagaInteresse);
		}
	}

	@Get("/interesseVoluntarioInscricao")
	public void interesseVoluntarioInscricao() throws DAOException {
		if (temCodigo()) {
			Atuacao atuacao = new Atuacao("Aguardando confirmação",
					usuarioSessao.getVoluntarios().get(0), this.vagaInteresse,
					new Date(Calendar.getInstance().getTime().getTime()));
			VagaDAO vagaDao = new VagaDAO();
			this.vagaInteresse.adicionarAtuacao(atuacao);
			vagaDao.salvar(this.vagaInteresse);

			result.redirectTo(this).interesseVoluntarioInscricaoSucesso();
		}
	}

	@Path("/interesseVoluntarioInscricaoSucesso")
	public void interesseVoluntarioInscricaoSucesso() {
		if (temCodigo()) {

		}

	}

	@Path("/procurarVaga")
	public void procurarVaga() {
		if (temCodigo()) {
			result.include("usuario", usuarioSessao);
		}
	}

	@Path("/perfilVoluntario")
	public void perfilVoluntario() throws UnsupportedEncodingException {
		if (temCodigo()) {
			this.usuarioSessao = usuarioDAO.buscar(Usuario.class,
					usuarioSessao.getCodigo());
			if (usuarioSessao.getAvatares() == null) {
				Avatar avatar = new Avatar(null);
				AvatarDAO avatarDao = new AvatarDAO();
				avatar.setUsuario(usuarioSessao);
				try {
					avatarDao.salvar(avatar);
					usuarioDAO.salvar(usuarioSessao);
				} catch (DAOException e) {
					e.printStackTrace();
				}
			}
			String base64DataString;
			try {
				byte[] bAvatar = Base64.getEncoder().encode(
						usuarioSessao.getAvatares().get(0).getImage());
				base64DataString = new String(bAvatar, "UTF-8");

			} catch (Exception e) {
				base64DataString = "img/def-user.png";
			}
			result.include("imagem", base64DataString);
			result.include("voluntario", usuarioSessao.getVoluntarios().get(0));
			result.include("usuario", usuarioSessao);
			result.include("erroSenha", erroSenha);
			this.erroSenha = "NAO";
		}
	}
	
	@Post("/procurarVagaResultado")
	public void procurarVagaResultado(String nome, String descricao){
		if(temCodigo()){
			VagaDAO vagaDao = new VagaDAO();
			result.include("vagasPesquisa",
					vagaDao.vagasVoluntarioProcurar(nome, descricao));

		
		}
	}

	@Post("/editarVoluntario")
	public void editarVoluntario(Usuario usuario, Voluntario voluntario,
			String repete) throws UnsupportedEncodingException {
		if (temCodigo()) {
			// ALTERAR ENTIDADE = AREA DE ATUACAO, DESCRICAO, EMAIL, FOTO
			Voluntario voluntarioUsuarioSessao = usuarioSessao.getVoluntarios()
					.get(0);
			voluntarioUsuarioSessao.setNome(voluntario.getNome());
			voluntarioUsuarioSessao.setEmail(voluntario.getEmail());
			voluntarioUsuarioSessao.setCelular(voluntario.getCelular());

			if (repete == null) {
				repete = "";
			}

			try {
				VoluntarioDAO voluntarioDao = new VoluntarioDAO();
				voluntarioDao.salvar(voluntario);

				if (!(repete.isEmpty())) {
					usuarioSessao.setSenha(usuario.getSenha());
					if (usuarioSessao.getSenha().equals(repete)) {
						usuarioSessao.setSenha(repete);
						// usuarioDAO.salvar(usuarioSessao);
						this.erroSenha = "NAO";
					} else {
						this.erroSenha = "SIM";
					}
				}
				usuarioDAO.salvar(usuarioSessao);
			} catch (DAOException e) {
				System.out.println("Não alterou porque " + e.getMessage());
			}
			result.redirectTo(this).perfilVoluntario();
		}
	}

	@Post("/salvarImagemVoluntario/imagem")
	public void salvarImagemVoluntario(UploadedFile imagem)
			throws UnsupportedEncodingException {
		if (temCodigo()) {
			try {
				GerenciadorImagem imagens = new GerenciadorImagem();
				imagens.salva(imagem.getFile(), usuarioSessao);

			} catch (IOException e) {
				e.printStackTrace();
			} catch (DAOException e) {
				e.printStackTrace();
			}
			result.redirectTo(this).perfilVoluntario();

		}
	}

}
