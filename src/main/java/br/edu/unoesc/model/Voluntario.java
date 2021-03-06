package br.edu.unoesc.model;

import java.util.Calendar;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@ToString(of = { "codigo", "nome", "celular", "email" })
@EqualsAndHashCode(of = { "codigo" })
@Entity
public @Data class Voluntario implements MinhaEntidade {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column
	private String nome;
	
	@Column
	private String celular;
	
	@Column
	private String email;

	@Temporal(TemporalType.DATE)
	private Calendar nascimento;

	@ManyToOne
	@JoinColumn(name="usuario_codigo")
	private Usuario usuario;

	public Voluntario(String nome, String celular, String email,
			Calendar nascimento) {
		super();
		this.nome = nome;
		this.celular = celular;
		this.email = email;
		this.nascimento = nascimento;
	}
}
