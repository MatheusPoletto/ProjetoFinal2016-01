package br.edu.unoesc.model;

import java.util.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@NoArgsConstructor
@AllArgsConstructor
@ToString(of = {"codigo", "nomeVaga", "descricao", "importancia", "presencial", "estado", "cidade"})
@EqualsAndHashCode(of = {"codigo"})
@Entity
public @Data class Vaga implements MinhaEntidade{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	//private Integer idEntidade;
	private String nomeVaga;
	private Integer quantidadePessoa;
	private String descricao;
	private Integer quantidadeVaga;
	private String importancia;
	private String presencial;
	private String estado;
	private String cidade;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataCadastro;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataValidade;
	
	@ManyToOne(optional = false, targetEntity = Entidade.class)
	private Entidade entidade;
	
	@OneToMany(mappedBy = "vaga", targetEntity = Atuacao.class, fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Atuacao> atuacoes = new ArrayList<>();
	
	public void adicionarAtuacao(Atuacao atuacao){
		if(this.atuacoes.size() < this.quantidadeVaga){
			this.atuacoes.add(atuacao);
		}else{
			System.out.println("estourou o limite da vaga e nao foi adicionado!");
		}
	}
}
