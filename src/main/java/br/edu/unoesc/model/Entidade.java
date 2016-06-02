package br.edu.unoesc.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Entidade {
	
	private Integer idEntidade;
	private String nomeEntidade;
	private String areaAtuacao; //se ajuda crianças, pessoas que não tem o que comer, etc; 
	private String Login;
	private String email;
	private String senha;
	private String telefone; 

}
