package br.edu.unoesc.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Vaga;
import br.edu.unoesc.model.Voluntario;

@RequestScoped
public class AtuacaoDAO extends HibernateDAO<Atuacao> {

	public List<Atuacao> buscaAtuacoes(Long voluntario_codigo){
		this.conectar();
		try {
			VoluntarioDAO volDao = new VoluntarioDAO();
			TypedQuery<Atuacao> query = em.createNamedQuery("NM_ATUACOES", Atuacao.class);
			query.setParameter(1, volDao.buscar(Voluntario.class, voluntario_codigo));
			return query.getResultList();
		} catch (NoResultException e) {
			return null;
		} finally {
			this.finalizar();
		}
	}
	
	public List<Atuacao> atuacoesParaConfirmar(Long entidade_codigo){
		this.conectar();
		try {
			TypedQuery<Atuacao> query = em.createNamedQuery("NM_ATUACOES_CONFIRMAR", Atuacao.class);
			query.setParameter(1, entidade_codigo);
			return query.getResultList();
		} catch (NoResultException e) {
			return null;
		} finally {
			this.finalizar();
		}
	}
	
	public List<Atuacao> atuacoesConcluidas(Long entidade_codigo){
		this.conectar();
		try {
			TypedQuery<Atuacao> query = em.createNamedQuery("NM_ATUACOES_CONCLUIDAS", Atuacao.class);
			query.setParameter(1, entidade_codigo);
			return query.getResultList();
		} catch (NoResultException e) {
			return null;
		} finally {
			this.finalizar();
		}
	}
	
}
