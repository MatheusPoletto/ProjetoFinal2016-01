package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Entity
@NamedQueries({ @NamedQuery(name = Pessoa.FILTRA_POR_NOME, query = "from Pessoa a where upper(a.nome) like ? "),
	@NamedQuery(name = Pessoa.FILTRA_POR_DATA, query = "from Pessoa a where a.data between ? and ? "),
	@NamedQuery(name = Pessoa.TODOS, query = "from Pessoa a ")})
public @Data class Pessoa implements MinhaEntidade {

	public static final String FILTRA_POR_NOME = "FILTRA_POR_NOME";
	public static final String FILTRA_POR_DATA = "FILTRA_POR_DATA";
	public static final String TODOS = "TODOS";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	private String nome;
	
	@Temporal(TemporalType.DATE)
	private Date data;
	
}
