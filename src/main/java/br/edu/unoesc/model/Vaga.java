package br.edu.unoesc.model;

import java.util.Date;

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
	public Integer idEntidade;
	public String nomeVaga;
	public Integer pessoaNece;
	public String descricao;
	private Integer quantidade;
	public String importancia;
	public String presencial;
	public String estado;
	public String cidade;
	private Date dataCadastro;
	private Date dataValidade;

}
