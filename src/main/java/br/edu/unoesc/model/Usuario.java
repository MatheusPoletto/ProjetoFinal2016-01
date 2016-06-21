package br.edu.unoesc.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
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

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@ToString(of = { "codigo", "login", "senha" })
@EqualsAndHashCode(of = { "codigo" })
@Entity
@NamedQueries({
	@NamedQuery(name = Usuario.FILTRA_POR_LOGIN, query = "from Usuario a where a.login = :login "),
		@NamedQuery(name = "Usuario", query = "from Usuario a ") })
public @Data class Usuario implements MinhaEntidade {
	public static final String FILTRA_POR_LOGIN = "FILTRA_POR_LOGIN";
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column
	private String login;
	
	@Column
	private String senha;

	@OneToMany(mappedBy = "usuario", targetEntity = Voluntario.class, fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Voluntario> voluntarios = new ArrayList<>();

	@OneToMany(mappedBy = "usuario", targetEntity = Entidade.class, fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Entidade> entidades = new ArrayList<>();

	@OneToMany(mappedBy = "usuario", targetEntity = Avatar.class, fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Avatar> avatares = new ArrayList<>();
	
}
