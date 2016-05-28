package br.edu.unoesc.model;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class Endereco {
	
	
	private Integer id;
	private String rua;
	private String numero;
	private String bairro;
	private String cidade;
	private String cep;
	private String uf;

}
