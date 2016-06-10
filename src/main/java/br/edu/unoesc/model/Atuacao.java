package br.edu.unoesc.model;


import java.util.Date;

import javax.persistence.Entity;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(of = "codigo")
@ToString(of = {"codigo", "status"})
@Entity
public @Data class Atuacao implements MinhaEntidade {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	private String status;
	
	@ManyToOne(optional = false, targetEntity = Voluntario.class)
	private Voluntario voluntario; 
	
	@ManyToOne(optional = false, targetEntity = Vaga.class)
	private Vaga vaga;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date data;
}
