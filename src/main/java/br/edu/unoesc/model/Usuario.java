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
@ToString(of = {"codigo", "login", "senha"})
@EqualsAndHashCode(of = {"codigo"})
@Entity
public @Data class Usuario implements MinhaEntidade {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	private String login;
	private String senha;
	
	@OneToMany(mappedBy = "usuario", targetEntity = Voluntario.class, fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Voluntario> voluntarios = new ArrayList<>();
	
	public void adcionarVoluntario(Voluntario voluntario){
		this.voluntarios.add(voluntario);
	}
	
	@OneToMany(mappedBy = "usuario", targetEntity = Entidade.class, fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Entidade> entidades = new ArrayList<>();
	
	public void adcionarEntidade(Entidade entidade){
		this.entidades.add(entidade);
	}
	

}
