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
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "vaga_atuacao", joinColumns = { @JoinColumn(name = "atuacao_codigo", referencedColumnName = "codigo") }, 
									 inverseJoinColumns = { @JoinColumn(name = "vaga_codigo", referencedColumnName = "codigo") })
	private List<Vaga> vagas = new ArrayList<>();
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date data;
}
