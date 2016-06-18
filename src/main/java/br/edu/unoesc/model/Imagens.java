package br.edu.unoesc.model;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContext;

import org.apache.commons.io.IOUtils;

import br.com.caelum.vraptor.observer.upload.UploadedFile;
import br.edu.unoesc.dao.AvatarDAO;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Imagens {
	
	 private File pastaImagens;

	  public Imagens(ServletContext context) {
	    String caminhoImagens = context.getRealPath("/imagensSalvas");
	    pastaImagens = new File(caminhoImagens);
	    pastaImagens.mkdir();
	  }
	  
	  public void salva(InputStream imagem, Usuario usuario) throws IOException {
		    File destino = new File(pastaImagens, usuario.getCodigo() + ".imagem");
		    byte[] bytes = IOUtils.toByteArray(imagem);

		    AvatarDAO avatars = new AvatarDAO();
		    avatars.salvaBlob(new Avatar(), bytes);
		  }
	  
	

}
