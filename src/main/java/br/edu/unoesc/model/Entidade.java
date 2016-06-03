package br.edu.unoesc.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;








import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Entidade {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idEntidade;
	private String nomeEntidade;
	private String areaAtuacao; //se ajuda crianças, pessoas que não tem o que comer, etc; 
	private String Login;
	private String email;
	private String senha;
	private String telefone; 
	
	@OneToMany(mappedBy = "entidade", targetEntity = Vaga.class, fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Vaga> vagas = new ArrayList<>();
	
	public void adcionar(Vaga vaga){
		this.vagas.add(vaga);
	}

}
