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
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter

@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Vaga {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer idVaga;
	public Integer idEntidade;
	public String nomeVaga;
	public Integer pessoaNece;
	public String descricao;
	private Integer quantidade;
	public String importancia;
	public String presencial;
	public String estado;
	public String cidade;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataCadastro;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataValidade;
	
	//associar
	@ManyToOne(optional = false, targetEntity = Entidade.class)
	private Entidade entidade;

}
