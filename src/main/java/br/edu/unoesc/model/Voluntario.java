package br.edu.unoesc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Entity 
public class Voluntario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idVoluntario;
	
	private String nomeVoluntario;
	private String telefoneCelular;
	private String email;
	private Integer idade;
	private String login;
	private String senha;
	
	


}
