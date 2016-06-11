package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Voluntario;

@Controller
public class AcessoController {

	@Inject
	private UsuarioDAO usuarioDAO;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	@Path("/index")
	public void index() {
		result.include("variable", "");
	}
	
	@Post("/autenticar")
	public void autenticar(Usuario usuario) {
		if (usuario != null) {
			List<Usuario> usuarios = usuarioDAO.buscar(Usuario.class, usuario.getLogin());
			if(usuarios.isEmpty()){
				result.redirectTo("/cadastrar");
			}else{
				//SE ENCONTROU ALGUEM COM O LOGIN PROCURA VER SE A SENHA BATE
				Boolean encontrou = false;
				for(Usuario user : usuarios){
					if((user.getLogin().equals(usuario.getLogin())) && (user.getSenha().equals(usuario.getSenha())) ){
						encontrou = true;
						result.include("usuario", user);
						if(user.getVoluntarios().isEmpty()){
							//SE N TIVER NENHUM VOLUNTARIO EH UMA ENTIDADE
							//result.redirectTo("/homeEntidade");
							System.out.println("Oi eu sou a microsoft!");
						}else{
							//SE TIVER ELE EH VOLUNTARIO
							//result.redirectTo("/homeVoluntario");
							System.out.println("Oi eu sou o goku!");
						}
						result.redirectTo("/");
					}
				}
				if(!encontrou){
					result.redirectTo("/cadastrar");
				}
				
			}
		}
	}

}
