package br.edu.unoesc.email;

import lombok.Getter;
import lombok.Setter;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

@Getter
@Setter
public class EnviarEmail {

	public void sendEmail(String destinoEmail, String destinoNome,
			String mensagemCorpo) throws EmailException {

		SimpleEmail email = new SimpleEmail();
		// Utilize o hostname do seu provedor de email
		// System.out.println("alterando hostname...");
		
		
		email.setHostName("smtp.gmail.com");
		// Quando a porta utilizada não é a padrão (gmail = 465)
		email.setSmtpPort(465);
		
		
		//email.setHostName("smtp.googlemail.com"); 
        //email.setSmtpPort(465); //        

		//email.setHostName("smtp.gmail.com");
		//email.setSmtpPort(578);
		
        //email.setHostName("smtp.googlemail.com"); 
        //email.setSmtpPort(578);                  

        email.setHostName("smtp.gmail.com");
        email.setSmtpPort(465);
		
		// Adicione os destinatários
		email.addTo(destinoEmail, destinoEmail);
		// Configure o seu email do qual enviará
		email.setFrom("finalquintoperiodo@gmail.com", "Eu Voluntário - Sistema");
		// Adicione um assunto
		email.setSubject("Uma inscrição foi aceita");
		// Adicione a mensagem do email
		email.setMsg(mensagemCorpo);
		// Para autenticar no servidor é necessário chamar os dois métodos
		// abaixo
		// System.out.println("autenticando...");
		email.setSSL(true);
		email.setAuthentication("finalquintoperiodo@gmail.com",
				"ribakinholindo");
		System.out.println("enviando...");
		email.send();
		System.out.println("Email enviado!");
	}

}
