package br.edu.unoesc.teste;

import java.util.Date;

import br.edu.unoesc.dao.EntidadeDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Endereco;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Vaga;

public class DaoTeste {

	public static void main(String[] args) throws DAOException {
		EntidadeDAO entidadedao = new EntidadeDAO();
		Entidade entidade = entidadedao.buscar(Entidade.class, 2l);		
		Vaga vaga = new Vaga();
		vaga.setEntidade(entidade);
		vaga.setDescricao("vaca");
		
		entidade.adicionarVaga(vaga);
		
		
		entidadedao.salvar(entidade);
		
		
	}

}
