package br.com.caelum.vraptor.controller;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@ApplicationScoped
@Controller
public class IndexController {

	private final Result result;
	
	private String tipoMensagem = "TESTE", precisaMensagem = "NAO";

	/**
	 * @deprecated CDI eyes only
	 */
	protected IndexController() {
		this(null);
	}
	
	@Inject
	public IndexController(Result result) {
		this.result = result;
	}

	@Path("/")
	public void index() {
		
	}
	
	@Get("/cadastro")
	public void cadastro() {
		result.include("precisaMensagem", precisaMensagem);
		result.include("tipoMensagem", tipoMensagem);
		this.precisaMensagem = "NAO";
	}
	
	public void precisaMensagem(String tipo) {
		this.tipoMensagem = tipo;
		this.precisaMensagem = "SIM";
		result.redirectTo(this).cadastro();
	}
	
	@Get("/contato")
	public void contato() {
		
	}
}