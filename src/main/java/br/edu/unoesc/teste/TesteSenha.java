package br.edu.unoesc.teste;

import org.apache.commons.codec.digest.DigestUtils;

import br.edu.unoesc.model.Usuario;

public class TesteSenha {

	public static void main(String[] args) {
		Usuario usuario = new Usuario();
		usuario.setSenha(DigestUtils.md5Hex("123"));
		
		System.out.println(usuario.getSenha());
		System.exit(0);
	}

}
