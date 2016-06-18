package br.edu.unoesc.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

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
@ToString(of = {"codigo", "rua", "numero", "bairro", "cidade", "cep", "uf"})
@Entity
public @Data class Endereco implements MinhaEntidade {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	private String rua;
	private String numero;
	private String bairro;
	private String cidade;
	private String cep;
	private String uf;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "entidade_endereco", joinColumns = { @JoinColumn(name = "endereco_codigo", referencedColumnName = "codigo") }, 
									 inverseJoinColumns = { @JoinColumn(name = "entidade_codigo", referencedColumnName = "codigo") })
	private List<Entidade> entidades = new ArrayList<>();
}
