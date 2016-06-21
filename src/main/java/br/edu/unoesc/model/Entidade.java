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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@EqualsAndHashCode(of = "codigo")
@ToString(of = {"codigo", "nomeEntidade", "areaAtuacao", "email", "telefone", "fotoEntidade"})
@Entity
public @Data class Entidade implements MinhaEntidade {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column
	private String nomeEntidade;
	
	@Column
	private String areaAtuacao;
	
	@Column
	private String email;
	
	@Column
	private String telefone; 
	
	@Column
	private String descricao;
		
	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true)
	@PrimaryKeyJoinColumn
	private Usuario usuario;
	
	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true)
	@PrimaryKeyJoinColumn
	private Endereco endereco;
	
	
	@OneToMany(mappedBy = "entidade", targetEntity = Vaga.class, fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Vaga> vagas = new ArrayList<>();
	
	public void adicionarVaga(Vaga vaga){
		this.vagas.add(vaga);
	}

	public Entidade(String nomeEntidade, String areaAtuacao, String email,
			String telefone, String descricao) {
		super();
		this.nomeEntidade = nomeEntidade;
		this.areaAtuacao = areaAtuacao;
		this.email = email;
		this.telefone = telefone;
	}

}
