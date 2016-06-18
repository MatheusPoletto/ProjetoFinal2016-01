package br.edu.unoesc.dao;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.edu.unoesc.model.Usuario;

@RequestScoped
public class UsuarioDAO  extends HibernateDAO<Usuario>{
	
	  public Usuario buscarUsuario(String login) {
	        this.conectar();
	        try {
	            TypedQuery<Usuario> query = em.createNamedQuery("FILTRA_POR_LOGIN", Usuario.class);
	            query.setParameter(1, login);
	            return query.getSingleResult();
	        } finally {
	            this.finalizar();
	        }
	    }
}

