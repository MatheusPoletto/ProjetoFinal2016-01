package br.edu.unoesc.dao;

import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Vaga;

@RequestScoped
public class VagaDAO  extends HibernateDAO<Vaga>{
	
	public boolean salvarVagaAtuacao(Vaga vaga, Atuacao atuacao) throws DAOException{
		List<Atuacao> atuacoes = new ArrayList<>();
		
		if(vaga.getQuantidadeVaga()>0){//SE AINDA NAO PEGOU O LIMITE CRIADO
			atuacoes.add(atuacao);
			vaga.setAtuacao(atuacoes);
			vaga.setQuantidadeVaga(vaga.getQuantidadeVaga()-1);
			salvar(vaga);
			return true;
		}else{
			return false;
		}
		
	}
	
	
	public List<Vaga> listarTodos() {
		this.conectar();
		try {
			TypedQuery<Vaga> query = em.createNamedQuery("VagaAberta", Vaga.class);
			return query.getResultList();
		} finally {
			this.finalizar();
		}
	}

}

