package br.edu.unoesc.teste;

import org.apache.commons.mail.EmailException;

import br.edu.unoesc.email.EnviarEmail;
import br.edu.unoesc.model.Atuacao;

public class TesteEmail {

	public static void main(String[] args) {
		
			// teste
			EnviarEmail enviarEmail = new EnviarEmail();
			try {
				enviarEmail.sendEmail(new Atuacao());
			} catch (EmailException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		


	}

}
