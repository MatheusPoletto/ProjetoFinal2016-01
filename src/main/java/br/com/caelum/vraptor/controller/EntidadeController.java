package br.com.caelum.vraptor.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

import org.apache.commons.mail.EmailException;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.observer.upload.UploadedFile;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.AtuacaoDAO;
import br.edu.unoesc.dao.AvatarDAO;
import br.edu.unoesc.dao.EnderecoDAO;
import br.edu.unoesc.dao.EntidadeDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.dao.VagaDAO;
import br.edu.unoesc.email.EnviarEmail;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Avatar;
import br.edu.unoesc.model.Endereco;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.GerenciadorImagem;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Vaga;

@ApplicationScoped
@Controller
public class EntidadeController {
	@Inject
	private UsuarioDAO usuarioDAO = new UsuarioDAO();

	@Inject
	private Result result;

	@Inject
	private Validator validator;

	private Usuario usuarioSessao = new Usuario();
	
	private String mandandoEmail = "NAO";

	private Atuacao atuacao = new Atuacao();

	private Boolean temCodigo() {
		if ((usuarioSessao.getCodigo() != null) && usuarioSessao.getEntidades().get(0) != null) {
			return true;
		} else {
			result.redirectTo(AcessoController.class).redirecionaLogin();
			return false;
		}
	}

	public void index(Usuario usuario) {
		this.usuarioSessao = usuario;
		result.redirectTo(this).homeEntidade();
	}

	@Path("/homeEntidade")
	public void homeEntidade() {
		if (temCodigo()) {
			this.usuarioSessao = usuarioDAO.buscar(Usuario.class,
					usuarioSessao.getCodigo());

			AtuacaoDAO atuacaoDao = new AtuacaoDAO();
			result.include(
					"atuacoesConfirmar",
					atuacaoDao.atuacoesParaConfirmar(usuarioSessao
							.getEntidades().get(0).getCodigo()));
			result.include("usuario", usuarioSessao);
			result.include("mandandoEmail", mandandoEmail);
			mandandoEmail = "NAO";
		}
	}

	@Path("/perfilEntidade")
	public void perfilEntidade() throws UnsupportedEncodingException {
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
			result.include("entidade", usuarioSessao.getEntidades().get(0));
			result.include("endereco", usuarioSessao.getEntidades().get(0)
					.getEnderecos().get(0));
			result.include("usuario", usuarioSessao);
		}
	}

	@Post("/editarEntidade")
	public void editarEntidade(Usuario usuario, Entidade entidade,
			Endereco endereco) throws UnsupportedEncodingException {
		if (temCodigo()) {
			// ALTERAR ENTIDADE = AREA DE ATUACAO, DESCRICAO, EMAIL, FOTO
			Entidade entidadeUsuarioSessao = usuarioSessao.getEntidades()
					.get(0);
			entidadeUsuarioSessao.setAreaAtuacao(entidade.getAreaAtuacao());
			entidadeUsuarioSessao.setDescricao(entidade.getDescricao());
			entidadeUsuarioSessao.setEmail(entidade.getEmail());

			// ALTERAR ENDERECO = RUA, BAIRRO, NUMERO, CIDADE, UF, CEP
			Endereco enderecoEntidadeSessao = entidadeUsuarioSessao
					.getEnderecos().get(0);
			enderecoEntidadeSessao.setRua(endereco.getRua());
			enderecoEntidadeSessao.setBairro(endereco.getBairro());
			enderecoEntidadeSessao.setNumero(endereco.getNumero());
			enderecoEntidadeSessao.setCidade(endereco.getCidade());
			enderecoEntidadeSessao.setUf(endereco.getUf());
			enderecoEntidadeSessao.setCep(endereco.getCep());

			try {
				EnderecoDAO enderecoDao = new EnderecoDAO();
				enderecoDao.salvar(endereco);
				EntidadeDAO entidadeDao = new EntidadeDAO();
				entidadeDao.salvar(entidadeUsuarioSessao);
				// usuarioDAO.salvar(usuarioSessao);
			} catch (DAOException e) {
				System.out.println("Não alterou porque " + e.getMessage());
			}
			result.redirectTo(this).perfilEntidade();
		}
	}

	@Post("/salvarImagem/imagem")
	public void salvarImagem(UploadedFile imagem)
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
			result.redirectTo(this).perfilEntidade();
		}
	}

	@Path("/atuacaoEntidade")
	public void atuacaoEntidade() {
		if (temCodigo()) {
			this.usuarioSessao = usuarioDAO.buscar(Usuario.class,
					usuarioSessao.getCodigo());
			AtuacaoDAO atuacaoDao = new AtuacaoDAO();
			result.include("usuario", usuarioSessao);
			result.include("entidade", usuarioSessao.getEntidades().get(0));
			result.include("endereco", usuarioSessao.getEntidades().get(0)
					.getEnderecos().get(0));
			result.include("vagaview", usuarioSessao.getEntidades().get(0)
					.getVagas());
			result.include(
					"atuacoesConcluidas",
					atuacaoDao.atuacoesConcluidas(usuarioSessao.getEntidades()
							.get(0).getCodigo()));
		}
	}

	@Path("/confirmarVoluntario")
	public void confirmarVoluntario() {
		if (temCodigo()) {
			this.usuarioSessao = usuarioDAO.buscar(Usuario.class,
					usuarioSessao.getCodigo());
			result.include("atuacao", atuacao);

			//Calendar date = atuacao.getVoluntario().getNascimento();
			/*Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			int year = cal.get(Calendar.YEAR);
			int month = cal.get(Calendar.MONTH);
			int day = cal.get(Calendar.DAY_OF_MONTH);*/

			result.include("idadeVoluntario", LocalDate.now().getYear() - atuacao.getVoluntario().getNascimento().get(Calendar.YEAR));
			result.include("usuario", usuarioSessao);
		}
	}

	@Get("/abrirInscricao/{codigo}")
	public void abrirInscricao(Long codigo) {
		if (temCodigo()) {
			// this.usuarioSessao = usuarioDAO.buscar(Usuario.class,
			// usuarioSessao.getCodigo());
			AtuacaoDAO atuacaoDao = new AtuacaoDAO();
			this.atuacao = atuacaoDao.buscar(Atuacao.class, codigo);
			result.redirectTo(this).confirmarVoluntario();
		}
	}

	@Get("/revogarInscricao/{codigo}")
	public void revogarInscricao(Long codigo) throws DAOException {
		if (temCodigo()) {
			AtuacaoDAO atuacaoDao = new AtuacaoDAO();
			atuacao = atuacaoDao.buscar(Atuacao.class, codigo);
			
			atuacao.setStatus("Revogada pela entidade");
			atuacaoDao.salvar(atuacao);
			
			VagaDAO vagaDao = new VagaDAO();
			Vaga vaga = atuacao.getVaga();
			vaga.setQuantidadeVaga(vaga.getQuantidadeVaga() + 1);
			vagaDao.salvar(vaga);
			
			/*this.atuacao = atuacaoDao.buscar(Atuacao.class, codigo);
			System.out.println(atuacao.getVaga());
			VagaDAO vagaDao = new VagaDAO();
			Vaga vaga = atuacao.getVaga();
			vaga.setQuantidadeVaga(vaga.getQuantidadeVaga() + 1);

			for (Atuacao encontraAtuacao : vaga.getAtuacao()) {
				if (encontraAtuacao.getCodigo().equals(atuacao.getCodigo())) {
					atuacaoDao.excluir(encontraAtuacao);
					vaga.getAtuacao().remove(encontraAtuacao);
					break;
				}
			}

			vagaDao.salvar(vaga);
*/
			result.redirectTo(this).homeEntidade();
		}
	}

	@Post("/aceitarInscricao")
	public void aceitarInscricao() throws DAOException {
		if (temCodigo()) {
			AtuacaoDAO atuacaoDao = new AtuacaoDAO();
			this.atuacao.setStatus("Inscrição confirmada pela entidade");
			atuacaoDao.salvar(this.atuacao);
			
			mandandoEmail = "SIM";
			new Thread(){
				public void run(){
					EnviarEmail enviarEmail = new EnviarEmail();
					try {
						enviarEmail.sendEmail(atuacao);
					} catch (EmailException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}.start();
			
			result.redirectTo(this).homeEntidade();
		}
	}

	@Path("/cadastrarVaga")
	public void cadastrarVaga() throws DAOException{
		if (temCodigo()) {
			result.include("usuario", usuarioSessao);
		}
	}

	@Post("/salvarVaga")
	public void salvarVaga(Vaga vaga) {
		if (temCodigo()) {
			this.usuarioSessao = usuarioDAO.buscar(Usuario.class,
					usuarioSessao.getCodigo());
			EntidadeDAO entidadedao = new EntidadeDAO();
			Entidade entidade = entidadedao.buscar(Entidade.class, usuarioSessao.getEntidades().get(0).getCodigo());
			
			vaga.setEntidade(entidade);
			entidade.adicionarVaga(vaga);
			try {
				VagaDAO vagaDao = new VagaDAO();
				vagaDao.salvar(vaga);
				
				entidadedao.salvar(entidade);
				result.redirectTo(this).atuacaoEntidade();
			} catch (DAOException e) {
				validator.onErrorForwardTo(IndexController.class).index();
			}
		}
	}

	@Post("/cadastrarEntidade")
	public void cadastrarEntidade(Usuario usuario, Entidade entidade,
			Endereco endereco) {
		Usuario usuarioExistente = usuarioDAO.buscarUsuario(usuario.getLogin());
		if (usuarioExistente == null) {
			try {
				entidade.setUsuario(usuario);
				endereco.setEntidade(entidade);
				Avatar avatar = new Avatar(null);
				avatar.setUsuario(usuario);

				EntidadeDAO entidadeDao = new EntidadeDAO();
				EnderecoDAO enderecoDao = new EnderecoDAO();
				AvatarDAO avatarDao = new AvatarDAO();
				usuarioDAO.salvar(usuario);
				avatarDao.salvar(avatar);
				entidadeDao.salvar(entidade);
				enderecoDao.salvar(endereco);

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
