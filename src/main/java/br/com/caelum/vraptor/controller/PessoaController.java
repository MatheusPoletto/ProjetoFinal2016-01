package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.PessoaDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Pessoa;

@Controller
public class PessoaController {

	@Inject
	private PessoaDAO pessoaDao;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	private Pessoa pessoa = new Pessoa();

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

}
