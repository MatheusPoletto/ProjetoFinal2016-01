package br.com.caelum.vraptor.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.observer.upload.UploadedFile;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.AtuacaoDAO;
import br.edu.unoesc.dao.EntidadeDAO;
import br.edu.unoesc.dao.UsuarioDAO;
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

	public void index(Usuario usuario) {
		this.usuarioSessao = usuario;
		result.redirectTo(this).homeEntidade();
	}
	
	@Path("/homeEntidade")
	public void homeEntidade() {
		this.usuarioSessao = usuarioDAO.buscar(Usuario.class, usuarioSessao.getCodigo());
		
		AtuacaoDAO atuacaoDao = new AtuacaoDAO();
		result.include("atuacoesConfirmar", atuacaoDao.atuacoesParaConfirmar(usuarioSessao.getEntidade().getCodigo()));
		result.include("usuario", usuarioSessao);
	}
	
	@Path("/perfilEntidade")
	public void perfilEntidade() throws UnsupportedEncodingException {
		this.usuarioSessao = usuarioDAO.buscar(Usuario.class, usuarioSessao.getCodigo());
		if(usuarioSessao.getAvatar() == null){
			Avatar avatar = new Avatar(null);
			usuarioSessao.setAvatar(new Avatar());
			try {
				usuarioDAO.salvar(usuarioSessao);
			} catch (DAOException e) {
				e.printStackTrace();
			}
		}
		String base64DataString;
		try {
			byte[] bAvatar = Base64.getEncoder().encode(usuarioSessao.getAvatar().getImage());
			base64DataString = new String(bAvatar , "UTF-8");

		} catch (Exception e) {
			base64DataString  = "img/def-user.png";
		}		
		result.include("imagem", base64DataString);
		result.include("usuario", usuarioSessao);	
	}
	
	@Post("/editarEntidade")
	public void editarEntidade(Usuario usuario, Entidade entidade, Endereco endereco) throws UnsupportedEncodingException {		
		//ALTERAR ENTIDADE = AREA DE ATUACAO, DESCRICAO, EMAIL, FOTO
		usuarioSessao.getEntidade().setAreaAtuacao(entidade.getAreaAtuacao());
		usuarioSessao.getEntidade().setDescricao(entidade.getDescricao());
		usuarioSessao.getEntidade().setEmail(entidade.getEmail());	
		
		//ALTERAR ENDERECO = RUA, BAIRRO, NUMERO, CIDADE, UF, CEP
		usuarioSessao.getEntidade().getEndereco().setRua(endereco.getRua());
		usuarioSessao.getEntidade().getEndereco().setBairro(endereco.getBairro());
		usuarioSessao.getEntidade().getEndereco().setNumero(endereco.getNumero());
		usuarioSessao.getEntidade().getEndereco().setCidade(endereco.getCidade());
		usuarioSessao.getEntidade().getEndereco().setUf(endereco.getUf());
		usuarioSessao.getEntidade().getEndereco().setCep(endereco.getCep());
		
		try {
			usuarioDAO.salvar(usuarioSessao);
		} catch (DAOException e) {
			System.out.println("Não alterou porque " + e.getMessage());
		}				
		result.redirectTo(this).perfilEntidade();
	}
	
	@Post("/salvarImagem/imagem")
	public void salvarImagem(UploadedFile imagem) throws UnsupportedEncodingException {
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
	
	@Path("/atuacaoEntidade")
	public void atuacaoEntidade() {
		this.usuarioSessao = usuarioDAO.buscar(Usuario.class, usuarioSessao.getCodigo());
		result.include("usuario", usuarioSessao);
		result.include("vagaview", usuarioSessao.getEntidade().getVagas());
	}
	
	
	@Path("/cadastrarVaga")
	public void cadastrarVaga() {
		result.include("usuario", usuarioSessao);
	}
	
	@Post("/salvarVaga")
	public void salvarVaga(Vaga vaga){				
		EntidadeDAO entidadedao = new EntidadeDAO();
		Entidade entidade = entidadedao.buscar(Entidade.class, usuarioSessao.getEntidade().getCodigo());			
		vaga.setEntidade(entidade);
		entidade.adicionarVaga(vaga);
		try {
			entidadedao.salvar(entidade);
		} catch (DAOException e) {
			e.printStackTrace();
		}
		result.redirectTo(this).atuacaoEntidade();
	}
	
	@Post("/cadastrarEntidade")
	public void cadastrarEntidade(Usuario usuario, Entidade entidade, Endereco endereco) {
		Usuario usuarioExistente = usuarioDAO.buscarUsuario(usuario.getLogin());
		if(usuarioExistente == null){
			try {
				usuario.setEntidade(entidade);
				entidade.setEndereco(endereco);
				Avatar avatar = new Avatar(null);
				usuario.setAvatar(avatar);
				usuarioDAO.salvar(usuario);
				result.include("mensagem", "<div class=\"alert alert-sucess\" role=\"alert\">Usuário cadastrado!</div>");
				result.redirectTo("/cadastro");
			} catch (DAOException e) {
				result.include("mensagem", "<div class=\"alert alert-danger\" role=\"alert\">Ocorreu um erro. Tente novamente!" + e.getMessage() + "</div>");
				result.redirectTo("/cadastro");
			}
		}else{
			result.include("mensagem", "<div class=\"alert alert-danger\" role=\"alert\">Tente outro usuário!</div>");
			result.redirectTo("/cadastro");
		}
	}
}
