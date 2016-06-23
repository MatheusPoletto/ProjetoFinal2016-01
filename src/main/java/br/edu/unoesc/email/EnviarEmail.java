package br.edu.unoesc.email;

import lombok.Getter;
import lombok.Setter;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.SimpleEmail;

import br.edu.unoesc.model.Atuacao;

@Getter
@Setter
public class EnviarEmail {

	public void sendEmail(Atuacao atuacao) throws EmailException {

		HtmlEmail email = new HtmlEmail();
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

        //email.setHostName("smtp.gmail.com");
        //email.setSmtpPort(465);
		
		// Adicione os destinatários
		email.addTo(atuacao.getVoluntario().getEmail(), atuacao.getVoluntario().getNome());
		// Configure o seu email do qual enviará
		email.setFrom("finalquintoperiodo@gmail.com", "Eu Voluntário - Sistema");
		// Adicione um assunto
		email.setSubject("Uma inscrição foi aceita");
		// Adicione a mensagem do email
		
		StringBuilder builder = new StringBuilder();
	    builder.append("<h4>Mensagem gerada automaticamente - inscrição foi confirmada</h4>");
	    builder.append("<p>Olá "+atuacao.getVoluntario().getNome()+" é com prazer que informamos que sua inscrição na vaga "+atuacao.getVaga().getNomeVaga()+" foi aceita pela ONG responsável!</p>");
	    builder.append("<p>Contate a entidade o mais rápido possível usando as informações:</p><br>");
	    builder.append("<ul>");
	    builder.append("<li>Nome da organização: "+atuacao.getVaga().getEntidade().getNomeEntidade() + "</li>");
	    builder.append("<li>Telefone para contato: "+atuacao.getVaga().getEntidade().getTelefone() + "</li>");
	    builder.append("<li>Email para contato: "+atuacao.getVaga().getEntidade().getEmail() + "</li>");
	    builder.append("</ul>");
	    builder.append("<br><br><br><br><br>");
	    
	    builder.append("<a href=\"http://localhost:8080/your.groupid/\">@EuVoluntário 2016</a> <br> ");	             
	    email.setHtmlMsg(builder.toString());

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
