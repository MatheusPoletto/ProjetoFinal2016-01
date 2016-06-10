package br.edu.unoesc.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;








import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
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
@ToString(of = {"codigo", "nomeEntidade", "areaAtuacao", "email", "telefone"})
@Entity
public class Entidade {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	private String nomeEntidade;
	private String areaAtuacao; //se ajuda crianças, pessoas que não tem o que comer, etc; 
	private String email;
	private String telefone; 
	
	@ManyToOne(optional = false, targetEntity = Usuario.class)
	private Usuario usuario;
	
	@OneToMany(mappedBy = "entidade", targetEntity = Vaga.class, fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Vaga> vagas = new ArrayList<>();
	
	public void adicionarVaga(Vaga vaga){
		this.vagas.add(vaga);
	}
}
