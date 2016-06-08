package br.edu.unoesc.teste;

import java.util.Date;

import br.edu.unoesc.dao.PessoaDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Pessoa;

public class Main {
public static void main(String[] args) throws DAOException {
	Pessoa pessoa = new Pessoa();
	pessoa.setNome(" nome" );
	pessoa.setData(new Date(10, 10, 2010));
	PessoaDAO pessoaDAO = new PessoaDAO();
	pessoaDAO.salvar(pessoa);
}
}
