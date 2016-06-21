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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
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
/*@NamedQueries({
	@NamedQuery(name=Vaga.FILTRA_POR_ABERTA, query = "SELECT v FROM Vaga v JOIN Atuacao a WHERE a.vaga_codigo != v.codigo") })*/
//@NamedQueries({
		/*@NamedQuery(name="VagaAberta", query = "SELECT v FROM Vaga v JOIN Atuacao a WHERE a.vaga_codigo != v.codigo "),*/
		//@NamedQuery(name = "br.edu.unoesc.model.Vaga", query = "SELECT v FROM Vaga v LEFT JOIN Atuacao a WHERE a.vaga_codigo != v.codigo ") })
public @Data class Vaga implements MinhaEntidade{
	//public static final String FILTRA_POR_ABERTA = "FILTRA_POR_ABERTA";
	//public static final String TODOS = "TODOS";

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
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinTable(name = "vaga_atuacao", joinColumns = { @JoinColumn(name = "vaga_codigo", referencedColumnName = "codigo") }, 
									 inverseJoinColumns = { @JoinColumn(name = "atuacao_codigo", referencedColumnName = "codigo") })
	private Atuacao atuacao;
	
}
