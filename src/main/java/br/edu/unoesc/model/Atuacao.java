package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter

@Setter
@NoArgsConstructor
@AllArgsConstructor

@Entity
public class Atuacao {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idAtuacao;
	
	private Long idVoluntario; 
	private Long idVaga;
	private String status;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date data;
	
	
	


	

}
