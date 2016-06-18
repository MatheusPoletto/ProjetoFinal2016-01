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
import javax.persistence.ManyToOne;
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
@EqualsAndHashCode(of = "codigo")
@ToString(of = {"codigo", "nomeEntidade", "areaAtuacao", "email", "telefone", "fotoEntidade"})
@Entity
public @Data class Entidade implements MinhaEntidade {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	private String nomeEntidade;
	private String areaAtuacao; //se ajuda crianças, pessoas que não tem o que comer, etc; 
	private String email;
	private String telefone; 
	private String descricao;
	private String fotoEntidade;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "usuario_entidade", joinColumns = { @JoinColumn(name = "entidade_codigo", referencedColumnName = "codigo") }, 
									 inverseJoinColumns = { @JoinColumn(name = "usuario_codigo", referencedColumnName = "codigo") })
	private List<Usuario> usuarios = new ArrayList<>();
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinTable(name = "entidade_endereco", joinColumns = { @JoinColumn(name = "entidade_codigo", referencedColumnName = "codigo") }, 
								   inverseJoinColumns = { @JoinColumn(name = "endereco_codigo", referencedColumnName = "codigo") })
	private Endereco endereco;
	
	
	@OneToMany(mappedBy = "entidade", targetEntity = Vaga.class, fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Vaga> vagas = new ArrayList<>();
	
	public void adicionarVaga(Vaga vaga){
		this.vagas.add(vaga);
	}
}
