package br.edu.unoesc.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import javax.enterprise.context.RequestScoped;

import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Avatar;
import br.edu.unoesc.model.Entidade;

@RequestScoped
public class AvatarDAO extends HibernateDAO<Avatar> {

	public void salvaBlob(Avatar avatar, byte[] array) {
		//File file = new File(arquivo);// "C:\\teste\\a.jpg"
		//byte[] bFile = new byte[(int) file.length()];
		byte[] bFile = array;
		
		 avatar.setImage(bFile);
	        
	        try {
				salvar(avatar);
			} catch (DAOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
		
		
	}
	
	public void pegaBlob(Avatar avatar) {
		Avatar avatar2 = buscar(Avatar.class, avatar.getCodigo());
        byte[] bAvatar = avatar2.getImage();	
        
        try{
        	System.out.println("entrou");
            FileOutputStream fos = new FileOutputStream("C:\\test.jpg"); 
        	System.out.println("fileoutgerou");
            fos.write(bAvatar);
        	System.out.println("write");
            fos.close();
        }catch(Exception e){
            e.printStackTrace();
        }

       
		
	}

}
