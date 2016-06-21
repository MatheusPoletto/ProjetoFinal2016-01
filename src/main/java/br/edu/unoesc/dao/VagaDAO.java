package br.edu.unoesc.dao;

import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Vaga;
import br.edu.unoesc.model.Voluntario;

@RequestScoped
public class VagaDAO  extends HibernateDAO<Vaga>{
		
	public List<Vaga> listarTodos() {
		this.conectar();
		try {
			TypedQuery<Vaga> query = em.createNamedQuery("VagaAberta", Vaga.class);
			return query.getResultList();
		} finally {
			this.finalizar();
		}
	}
	
	public List<Vaga> vagasDisponiveisPorEntidade(Long entidade_codigo){
		this.conectar();
		try {
			EntidadeDAO entDao = new EntidadeDAO();
			Entidade entidade = entDao.buscar(Entidade.class, entidade_codigo);
			
			TypedQuery<Vaga> query = em.createNamedQuery("NM_VAGAS_ABERTAS", Vaga.class);
			query.setParameter(1, entidade);
			return query.getResultList();
		} catch (NoResultException e) {
			return null;
		} finally {
			this.finalizar();
		}
	}
	
	public List<Vaga> vagasDisponiveisVoluntario(){
		this.conectar();
		try {
			TypedQuery<Vaga> query = em.createNamedQuery("NM_VAGAS_SUGERIDA_VOLUNTARIO", Vaga.class);
			return query.setMaxResults(10).getResultList();
		} catch (NoResultException e) {
			return null;
		} finally {
			this.finalizar();
		}
	}

}

