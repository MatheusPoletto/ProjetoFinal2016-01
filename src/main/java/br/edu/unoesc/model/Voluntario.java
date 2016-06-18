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
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
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
@NoArgsConstructor
@AllArgsConstructor
@Setter
@ToString(of = { "codigo", "nome", "celular", "email" })
@EqualsAndHashCode(of = { "codigo" })
@Entity
/*
 * @NamedQueries({ @NamedQuery(name = Voluntario.FILTRA_POR_NOME, query =
 * "from Voluntario a where upper(a.nome) like ? "),
 * 
 * @NamedQuery(name = Voluntario.FILTRA_POR_DATA, query =
 * "from Voluntario a where a.nascimento between ? and ? "),
 * 
 * @NamedQuery(name = Voluntario.TODOS, query = "from Voluntario a ")})
 */
public @Data class Voluntario implements MinhaEntidade {
	/*
	 * public static final String FILTRA_POR_NOME = "FILTRA_POR_NOME"; public
	 * static final String FILTRA_POR_DATA = "FILTRA_POR_DATA"; public static
	 * final String TODOS = "TODOS";
	 */

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	private String nome;
	private String celular;
	private String email;

	@Temporal(TemporalType.TIMESTAMP)
	private Date nascimento;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "usuario_voluntario", joinColumns = { @JoinColumn(name = "voluntario_codigo", referencedColumnName = "codigo") }, 
									 inverseJoinColumns = { @JoinColumn(name = "usuario_codigo", referencedColumnName = "codigo") })
	private List<Usuario> usuarios = new ArrayList<>();

	@OneToMany(mappedBy = "voluntario", targetEntity = Atuacao.class, fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Atuacao> atuacoes = new ArrayList<>();

	public void adicionarAtuacao(Atuacao atuacao) {
		this.atuacoes.add(atuacao);
	}

}
