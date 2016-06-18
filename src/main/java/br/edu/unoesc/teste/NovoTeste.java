package br.edu.unoesc.teste;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.dao.VoluntarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Endereco;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Voluntario;

public class NovoTeste {

	public static void main(String[] args) throws DAOException {	
		Endereco endereco = new Endereco();
		endereco.setRua("aaas");
		
		Entidade teste = new Entidade();
		teste.setNomeEntidade("aa");
		teste.setAreaAtuacao("aa");
		teste.setEmail("aa");
		teste.setTelefone("aaa");
		teste.setDescricao("aaa");
		teste.setFotoEntidade("img");
		teste.setEndereco(endereco);
		
		UsuarioDAO usuarioDao = new UsuarioDAO();
		
		Usuario user = usuarioDao.buscar(Usuario.class, 1l);
		System.out.println(user.getEntidade().getEndereco().getRua());
		user.getEntidade().getEndereco().setRua("irineu");
		/*user.setLogin("a");
		user.setSenha("a");
		user.setEntidade(teste);
		*/
		System.out.println(user.getEntidade().getEndereco().getRua());
		usuarioDao.salvar(user);
		System.exit(0);
	}

}
