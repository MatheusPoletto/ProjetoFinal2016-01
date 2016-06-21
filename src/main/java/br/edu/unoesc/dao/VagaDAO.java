package br.edu.unoesc.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.edu.unoesc.model.Vaga;

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

}

