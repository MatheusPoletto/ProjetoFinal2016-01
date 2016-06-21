package br.com.caelum.vraptor.controller;

import java.util.ArrayList;
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
import br.edu.unoesc.dao.UsuarioDAO;
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
	
	public void index(Usuario usuario) {
		this.usuarioSessao = usuario;
		result.redirectTo(this).homeVoluntario();
	}
	
	@Post("/cadastrarVoluntario")
	public void cadastrarVoluntario(Usuario usuario, Voluntario voluntario) {
		Usuario usuarioExistente = usuarioDAO.buscarUsuario(usuario.getLogin());
		if(usuarioExistente == null){
			try {
				usuario.setVoluntario(voluntario);
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
	
	@Path("/homeVoluntario")
	public void homeVoluntario() {
		this.usuarioSessao = usuarioDAO.buscar(Usuario.class, usuarioSessao.getCodigo());
		//Voluntario voluntario = usuario.getVoluntarios().get(0);
		
		
		
		//NECESSARIO PARA MOSTRAR POSSIVEIS ATUACOES EM ABERTO
		List<Atuacao> atuacoesDisponiveis = new ArrayList<>();
		int tamanhoMaximo = 10; //ATUACOES QUE SERAO EXIBIDAS
		
		//for(Usuario procuraEntidade : usuarioDAO.listar(Usuario.class)){//PROCURA TODAS AS ENTIDADES
			/*if((!procuraEntidade.getEntidades().isEmpty()) && (atuacoesDisponiveis.size() < tamanhoMaximo)){
				Entidade entidadeAnalisa = procuraEntidade.getEntidades().get(0);
				for(Vaga vaga : entidadeAnalisa.getVagas()){//PROCURA TODAS AS VAGAS DA ENTIDADE EM ABERTO
					if(vaga.getAtuacoes().get(0).getStatus().equals("Aberta")){
						if(atuacoesDisponiveis.size() < tamanhoMaximo){
							atuacoesDisponiveis.add(vaga.getAtuacoes().get(0));
						}
					}	
				}	
			}
		}*/
		//FIM PROCURA ATUACOES
		//result.include("voluntario", voluntario);	
		//result.include("atuacaoview", atuacoesDisponiveis);		
		
	}
	
	@Get("/passaCodigoVoluntario/{codigo},{tipo}")
	public void passaCodigoVoluntario(Long codigo, String tipo){
		Usuario usuario = usuarioDAO.buscar(Usuario.class, codigo);
		result.include("usuario", usuario);
		System.out.println(tipo);
		
		switch (tipo) {
		case "perfil":
			//result.redirectTo(this).perfilEntidade(usuario);
			break;
		case "inicio":
			result.redirectTo(this).homeVoluntario();
			break;
		case "cadastrarVaga":
			//result.redirectTo(this).cadastrarVaga(usuario);
		default:
			break;
		}
	}
	
	@Get("/voluntarioInterrese/{usuario},{atuacao}")
	public void voluntarioInterrese(Long codigo, Long atuacao) {
		Usuario usuario = usuarioDAO.buscar(Usuario.class, codigo);
		
		result.include("usuario", usuario);
		result.include("atuacao", atuacao);
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

