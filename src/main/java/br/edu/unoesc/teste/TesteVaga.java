package br.edu.unoesc.teste;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import br.edu.unoesc.dao.HibernateDAO;
import br.edu.unoesc.dao.VagaDAO;
import br.edu.unoesc.dao.VoluntarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.MinhaEntidade;
import br.edu.unoesc.model.Vaga;
import br.edu.unoesc.model.Voluntario;

public class TesteVaga {

	public static void main(String[] args) throws DAOException {
		VoluntarioDAO voluntarioDAO = new VoluntarioDAO();
		Voluntario voluntario = voluntarioDAO.buscar(Voluntario.class, 1l);
		
		VagaDAO vagaDao = new VagaDAO();
		//Vaga vaga = vagaDao.buscar(Vaga.class, 1l);
		//vaga.setQuantidadeVaga(3);
		
		
		List<Vaga> vagas = vagaDao.listarTodos();
		
		for(Vaga vaga:vagas){
			System.out.println(vaga.getDescricao());
		}
		
		/*Atuacao atuacao = new Atuacao();
		atuacao.setStatus("andando");
		atuacao.setVoluntario(voluntario);
		//atuacao.setVagas(vaga);
		atuacao.setData(new java.util.Date(1997,10,10));
	
		vaga.setAtuacao(atuacao);
		*/
		//vagaDao.salvar(vaga);
		
		
		System.exit(0);
	}

}
