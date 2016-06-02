package br.edu.unoesc.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Setter
public class Voluntario {
	
	private Integer idVoluntario;
	private String nomeVoluntario;
	private String telefoneCelular;
	private String email;
	private Integer idade;
	private String login;
	private String senha;


}
