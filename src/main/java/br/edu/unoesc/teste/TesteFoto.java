package br.edu.unoesc.teste;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.hibernate.Session;

import br.edu.unoesc.dao.AvatarDAO;
import br.edu.unoesc.dao.HibernateDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Avatar;

public class TesteFoto {

	public static void main(String[] args) {
		System.out.println("Hibernate save image into database");
		AvatarDAO avatarDao = new AvatarDAO();
        Avatar avatar = avatarDao.buscar(Avatar.class, 27l);
		
		avatarDao.pegaBlob(avatar);
		
		byte[] bAvatar = avatar.getImage();
		System.out.println(bAvatar.length);
		System.exit(0);

	}

}
