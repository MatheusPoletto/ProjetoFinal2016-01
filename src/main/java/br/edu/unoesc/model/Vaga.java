package br.edu.unoesc.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter

@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Vaga {
	
	public Integer idVaga;
	public String nomeVaga;
	public Integer pessoaNece;
	public String descricao;
	public String importancia;
	public String presencial;
	public String estado;
	public String cidade;

}
