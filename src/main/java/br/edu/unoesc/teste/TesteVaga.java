package br.edu.unoesc.teste;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import br.edu.unoesc.dao.VagaDAO;
import br.edu.unoesc.dao.VoluntarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Vaga;
import br.edu.unoesc.model.Voluntario;

public class TesteVaga {

	public static void main(String[] args) throws DAOException {
		VagaDAO vagaDao = new VagaDAO();
		
		Vaga vaga = vagaDao.buscar(Vaga.class, 1l);
		System.out.println(vaga.getCidade());
		
		
		
		System.exit(0);
	}

}
