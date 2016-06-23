package br.edu.unoesc.teste;

import java.sql.Date;
import java.util.Calendar;

import br.edu.unoesc.dao.VoluntarioDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Vaga;
import br.edu.unoesc.model.Voluntario;

public class Main {
public static void main(String[] args) throws DAOException {
	
	Usuario usuarioPessoa = new Usuario();
	usuarioPessoa.setLogin("bruna");
	usuarioPessoa.setSenha("123");
	
	Voluntario voluntario = new Voluntario();
	voluntario.setNome("Bruna");
	voluntario.setCelular("99443322");
	voluntario.setEmail("bru@gmail.com");
	//voluntario.setUsuario(usuarioPessoa);
	Calendar cl = Calendar.getInstance();
	cl.set(2000, 11, 01);
	//cl.get(Calendar.YEAR);
	voluntario.setNascimento(cl);
	voluntario.setUsuario(usuarioPessoa);
	
	UsuarioDAO usuarioDao = new UsuarioDAO();
	usuarioDao.salvar(usuarioPessoa);
	
	VoluntarioDAO volDao = new VoluntarioDAO();
	volDao.salvar(voluntario);

	
	
	

}
}
