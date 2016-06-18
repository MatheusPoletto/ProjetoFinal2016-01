package br.edu.unoesc.model;

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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

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
@ToString(of = { "codigo", "login", "senha" })
@EqualsAndHashCode(of = { "codigo" })
@Entity
@NamedQueries({
	@NamedQuery(name = Usuario.FILTRA_POR_LOGIN, query = "from Usuario a where upper(a.login) like ? "),
		@NamedQuery(name = Usuario.TODOS, query = "from Usuario a ") })
public @Data class Usuario implements MinhaEntidade {
	public static final String FILTRA_POR_LOGIN = "FILTRA_POR_LOGIN";
	public static final String TODOS = "TODOS";
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	private String login;
	private String senha;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinTable(name = "usuario_voluntario", joinColumns = { @JoinColumn(name = "usuario_codigo", referencedColumnName = "codigo") }, 
									 inverseJoinColumns = { @JoinColumn(name = "voluntario_codigo", referencedColumnName = "codigo") })
	private Voluntario voluntario;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinTable(name = "usuario_entidade", joinColumns = { @JoinColumn(name = "usuario_codigo", referencedColumnName = "codigo") }, 
								   inverseJoinColumns = { @JoinColumn(name = "entidade_codigo", referencedColumnName = "codigo") })
	private Entidade entidade;

}
