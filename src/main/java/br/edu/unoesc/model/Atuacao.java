package br.edu.unoesc.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@EqualsAndHashCode(of = "codigo")
@ToString(of = {"codigo", "status"})
@Entity
@NamedQueries({ @NamedQuery(name = "NM_ATUACOES", query = "select a from Atuacao a where a.voluntario = ?1 ")})
public @Data class Atuacao implements MinhaEntidade {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	private String status;
	
	@ManyToOne(optional = false, targetEntity = Voluntario.class)
	private Voluntario voluntario; 
	
	@ManyToOne(cascade=CascadeType.ALL)
	private Vaga vaga;    
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date data;

	public Atuacao(String status, Voluntario voluntario, Vaga vaga, Date data) {
		super();
		this.status = status;
		this.voluntario = voluntario;
		this.vaga = vaga;
		this.data = data;
	}
}

