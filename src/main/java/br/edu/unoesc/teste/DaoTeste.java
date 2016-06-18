package br.edu.unoesc.teste;

import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.model.Usuario;

public class DaoTeste {

	public static void main(String[] args) {
		UsuarioDAO usuariodao = new UsuarioDAO();
		Usuario usuario = usuariodao.buscarUsuario("a");
		System.out.println(usuario.getCodigo());
	}

}
