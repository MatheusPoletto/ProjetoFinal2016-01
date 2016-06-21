package br.edu.unoesc.teste;

import java.util.Calendar;
import java.util.Date;

import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.dao.VoluntarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Voluntario;

public class TesteUsuarioVoluntario {
	public static void main(String[] args) throws DAOException {
		/*Usuario usuario = new Usuario();
		usuario.setLogin("mat");
		usuario.setSenha("123");
		
		Voluntario voluntario = new Voluntario("Matheus", "99549681", "motaviop@gmail.com", new Date(Calendar.getInstance().getTime().getTime()));
		voluntario.setUsuario(usuario);
		
		UsuarioDAO usuarioDao = new UsuarioDAO();
		usuarioDao.salvar(usuario);
		
		VoluntarioDAO voluntarioDao = new VoluntarioDAO();
		voluntarioDao.salvar(voluntario);*/
		
		UsuarioDAO usuarioDao = new UsuarioDAO();
		Usuario usuario =usuarioDao.buscar(Usuario.class, 1l);
		System.out.println(usuario.getVoluntarios().get(0).getNome());
		
		System.exit(0);
		
	}

}
