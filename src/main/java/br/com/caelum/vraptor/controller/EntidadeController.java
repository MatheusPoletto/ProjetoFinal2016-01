package br.com.caelum.vraptor.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.Date;

import javax.imageio.ImageIO;
import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Endereco;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Vaga;
import br.edu.unoesc.model.Voluntario;

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
		usuario = usuarioDAO.buscar(Usuario.class, usuario.getCodigo());
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
			break;
		case "cadastrarVaga":
			result.redirectTo(this).cadastrarVaga(usuario);
			break;
		case "lista":
			result.redirectTo(this).atuacaoEntidade(usuario);			
		default:
			break;
		}
	}
	
	@Path("/atuacaoEntidade")
	public void atuacaoEntidade(Usuario usuario) {
		result.include("usuario", usuario);
		result.include("entidade", usuario.getEntidades().get(0));
		result.include("vagaview", usuario.getEntidades().get(0).getVagas());
	}
	
	@Path("/perfilEntidade")
	public void perfilEntidade(Usuario usuario) {
		result.include("usuario", usuario);
		result.include("entidade", usuario.getEntidades().get(0));
		result.include("endereco", usuario.getEntidades().get(0).getEnderecos().get(0));
	}
	
	@Path("/cadastrarVaga")
	public void cadastrarVaga(Usuario usuario) {
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
	/*
	@Get("/editarEntidade/{codigo}")
	public void editarEntidade(Long codigo) {
		System.out.println("tou aqui como111 " + codigo);
		Usuario usuario = usuarioDAO.buscar(Usuario.class, codigo);
		System.out.println("tou aqui como" + usuario.getCodigo());
		result.redirectTo(this).homeEntidade(usuario);
	}*/
	
	@Post("/editarEntidade")
	public void editarEntidade(Usuario usuario, Entidade entidade, Endereco endereco) {
		usuario = usuarioDAO.buscar(Usuario.class, usuario.getCodigo());
		
		//ALTERAR ENTIDADE = AREA DE ATUACAO, DESCRICAO, EMAIL, FOTO
		usuario.getEntidades().get(0).setAreaAtuacao(entidade.getAreaAtuacao());
		usuario.getEntidades().get(0).setDescricao(entidade.getDescricao());
		usuario.getEntidades().get(0).setEmail(entidade.getEmail());	
		
		//ALTERAR ENDERECO = RUA, BAIRRO, NUMERO, CIDADE, UF, CEP
		usuario.getEntidades().get(0).getEnderecos().get(0).setRua(endereco.getRua());
		usuario.getEntidades().get(0).getEnderecos().get(0).setBairro(endereco.getBairro());
		usuario.getEntidades().get(0).getEnderecos().get(0).setNumero(endereco.getNumero());
		usuario.getEntidades().get(0).getEnderecos().get(0).setCidade(endereco.getCidade());
		usuario.getEntidades().get(0).getEnderecos().get(0).setUf(endereco.getUf());
		usuario.getEntidades().get(0).getEnderecos().get(0).setCep(endereco.getCep());
		
		try {
			usuarioDAO.salvar(usuario);
		} catch (DAOException e) {
			System.out.println("A desgraça não alterou porque " + e.getMessage());
		}
		result.redirectTo(this).perfilEntidade(usuario);
	}
	
	@Post("/salvarVaga")
	public void salvarVaga(Usuario usuario, Vaga vaga){
		usuario = usuarioDAO.buscar(Usuario.class, usuario.getCodigo());
		
		vaga.setEntidade(usuario.getEntidades().get(0));
		vaga.setDataCadastro(new Date(LocalDate.now().getYear(), LocalDate.now().getMonthValue(), LocalDate.now().getDayOfMonth()));
		
		// TESTE DOS FIELD 
		System.out.println(">> CADASTRO DE VAGA - ENTIDADE CONTROLLER ");
		System.out.println("Nome da vaga (vaga.nomeVaga): "+ vaga.getNomeVaga());
		System.out.println("Quantidade de pessoas (vaga.quantidadePessoa): "+ vaga.getQuantidadePessoa());
		System.out.println("Descrição da vaga (vaga.descricao): "+vaga.getDescricao());
		System.out.println("Quantidade de vaga (vaga.quantidadeVaga): "+ vaga.getQuantidadeVaga());
		System.out.println("Importância da vaga (vaga.importancia): "+ vaga.getImportancia());
		System.out.println("Vaga presencial (vaga.presencial): "+ vaga.getPresencial());
		System.out.println("UF da vaga (vaga.estado): "+ vaga.getEstado());
		System.out.println("Cidade da vaga (vaga.cidade): "+ vaga.getCidade());
		System.out.println("Data de cadastro da vaga (LocalDate.now): "+ vaga.getDataCadastro());
		System.out.println("Data de validade de vaga (vaga.DataValidade): "+ vaga.getDataValidade());
		System.out.println("Nome da entidade: (vaga.SetEntidade.usuario): "+ vaga.getEntidade().getNomeEntidade());
		//entidade.adicionarVaga();
		
		/*Atuacao atuacao = new Atuacao();
		atuacao.setStatus("Em andamento");
		atuacao.setVaga(vaga);
		atuacao.setVoluntario(null);
		atuacao.setData(new Date(2016, 06, 11));
		*/
		/* FIM DOS TESTES */
		Voluntario voluntario = new Voluntario();
		voluntario.setCodigo(1l);
		
		Atuacao atuacao = new Atuacao();
		atuacao.setStatus("Aberta");
		atuacao.setVaga(vaga);
		atuacao.setVoluntario(voluntario);
		atuacao.setData(vaga.getDataCadastro());
		
		vaga.adicionarAtuacao(atuacao);
		
		usuario.getEntidades().get(0).adicionarVaga(vaga);
		
		try {
			usuarioDAO.salvar(usuario);
		} catch (DAOException e) {
			System.out.println("A desgraça nao adicionou a vaga porque" + e.getMessage());
		}
		result.redirectTo(this).cadastrarVaga(usuario);
	}
	
}
