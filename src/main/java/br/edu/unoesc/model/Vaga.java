package br.edu.unoesc.model;

import java.util.Calendar;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
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
@ToString(of = {"codigo", "nomeVaga", "descricao", "importancia", "presencial", "estado", "cidade"})
@EqualsAndHashCode(of = {"codigo"})
@Entity
@NamedQueries({ @NamedQuery(name = "NM_VAGAS", query = "select v from Vaga v where v.entidade = ?1 "),
				@NamedQuery(name = "NM_VAGAS_ABERTAS", query = "from Vaga v where v.entidade = ?1 and v.quantidadeVaga > 0 "),
				@NamedQuery(name = "NM_VAGAS_SUGERIDA_VOLUNTARIO", query = "from Vaga v where v.quantidadeVaga > 0"),
				@NamedQuery(name = "NM_VAGAS_VOLUNTARIO_PROCURAR", query = "from Vaga v where v.quantidadeVaga > 0 and v.nomeVaga like :nome or v.descricao like :descricao")})
public @Data class Vaga implements MinhaEntidade{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;

	private String nomeVaga;
	private Integer quantidadePessoa;
	private String descricao;
	private Integer quantidadeVaga;
	private String importancia;
	private String presencial;
	private String estado;
	private String cidade;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataCadastro = new Date(Calendar.getInstance().getTime().getTime());
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataValidade;
	
	@ManyToOne(optional = false, targetEntity = Entidade.class)
	private Entidade entidade;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@JoinColumn(name="vaga_codigo")
	private List<Atuacao> atuacao;
	
	public boolean adicionarAtuacao(Atuacao atuacao){
		if(this.getQuantidadeVaga() > 0){
			this.atuacao.add(atuacao);
			this.quantidadeVaga = this.quantidadeVaga - 1;
			return true;
		}else{
			return false;
		}
	}

	public Vaga(String nomeVaga, Integer quantidadePessoa, String descricao,
			Integer quantidadeVaga, String importancia, String presencial,
			String estado, String cidade, Date dataValidade, Entidade entidade) {
		super();
		this.nomeVaga = nomeVaga;
		this.quantidadePessoa = quantidadePessoa;
		this.descricao = descricao;
		this.quantidadeVaga = quantidadeVaga;
		this.importancia = importancia;
		this.presencial = presencial;
		this.estado = estado;
		this.cidade = cidade;
		this.dataValidade = dataValidade;
		this.entidade = entidade;
	}
	
	
}
