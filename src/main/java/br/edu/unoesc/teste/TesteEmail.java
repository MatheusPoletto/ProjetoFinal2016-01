package br.edu.unoesc.teste;

import org.apache.commons.mail.EmailException;

import br.edu.unoesc.email.EnviarEmail;

public class TesteEmail {

	public static void main(String[] args) {
		
			// teste
			EnviarEmail enviarEmail = new EnviarEmail();
			try {
				enviarEmail.sendEmail("motaviop@gmail.com",
						"Matheus Otavio Poletto", "A entidade tal aceitou voce!");
			} catch (EmailException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		


	}

}
