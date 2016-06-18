package br.com.caelum.vraptor.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.Date;

import javax.enterprise.context.ApplicationScoped;
import javax.imageio.ImageIO;
import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.observer.upload.UploadedFile;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.AvatarDAO;
import br.edu.unoesc.dao.EntidadeDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Avatar;
import br.edu.unoesc.model.Endereco;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Imagens;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Vaga;
import br.edu.unoesc.model.Voluntario;

@ApplicationScoped
@Controller
public class EntidadeController {
	@Inject
	private UsuarioDAO usuarioDAO;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	private Usuario usuarioSessao = new Usuario();

	//@Path("/index")
	public void index(Usuario usuario) {
		this.usuarioSessao = usuario;
		result.redirectTo(this).homeEntidade();
	}
	
	@Path("/homeEntidade")
	public void homeEntidade() {
		this.usuarioSessao = usuarioDAO.buscar(Usuario.class, usuarioSessao.getCodigo());
		result.include("usuario", usuarioSessao);
	}
	
	@Path("/perfilEntidade")
	public void perfilEntidade() {
		this.usuarioSessao = usuarioDAO.buscar(Usuario.class, usuarioSessao.getCodigo());
		result.include("usuario", usuarioSessao);	
	}
	
	@Post("/editarEntidade")
	public void editarEntidade(Usuario usuario, Entidade entidade, Endereco endereco) {		
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
		/*APAGUE AQUI*/
		/*
		AvatarDAO avatarDao = new AvatarDAO();
		
		avatarDao.salvaBlob(new Avatar(), entidade.getFotoEntidade());
		*/
		
		 /*ATE AQUI*/
		
		
		result.redirectTo(this).perfilEntidade();
	}
	
	@Post("/salvarImagem/imagem")
	public void salvarImagem(UploadedFile imagem) {
		System.out.println("teste");
		System.out.println(imagem.getFileName());
		Imagens imagens = new Imagens();
		try {
			imagens.salva(imagem.getFile(), usuarioSessao);
		} catch (IOException e) {
			// TODO Auto-generated catch block
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
		if(usuarioExistente.getLogin().isEmpty()){
			try {
				usuario.setEntidade(entidade);
				entidade.setEndereco(endereco);
				usuarioDAO.salvar(usuario);
			} catch (DAOException e) {
				
			}
		}else{
			result.include("mensagem", "<div class=\"alert alert-danger\" role=\"alert\">Tente outro usuário!</div>");
			result.redirectTo("/cadastro");
		}
	}
}
