package br.edu.unoesc.teste;

import java.sql.Date;

import br.edu.unoesc.dao.VoluntarioDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Vaga;
import br.edu.unoesc.model.Voluntario;

public class Main {
public static void main(String[] args) throws DAOException {
	
	Usuario usuarioPessoa = new Usuario();
	usuarioPessoa.setLogin("bruna");
	usuarioPessoa.setSenha("123");
	
	Voluntario voluntario = new Voluntario();
	voluntario.setNome("Bruna");
	voluntario.setCelular("99443322");
	voluntario.setEmail("bru@gmail.com");
	voluntario.setUsuario(usuarioPessoa);
	voluntario.setNascimento(new Date(1996, 06, 8));
	
	usuarioPessoa.adcionarVoluntario(voluntario);
	
	Usuario usuarioEntidade = new Usuario();
	usuarioEntidade.setLogin("lowmo");
	usuarioEntidade.setSenha("9987");
	
	Entidade entidade = new Entidade();
	entidade.setNomeEntidade("Lowgro Texturas");
	entidade.setAreaAtuacao("Personalização");
	entidade.setEmail("fabine@lowgrotexturas.com.br");
	entidade.setTelefone("34350091");
	entidade.setUsuario(usuarioEntidade);
	
	usuarioEntidade.adcionarEntidade(entidade);
	
	Vaga vaga = new Vaga();
	vaga.setNomeVaga("Festa de aniversário");
	vaga.setQuantidadePessoa(1);
	vaga.setDescricao("Preciso de alguém para ajudar com personalização.");
	vaga.setQuantidadeVaga(1);
	vaga.setImportancia("MÉDIA");
	vaga.setPresencial("Não");
	vaga.setEstado("SC");
	vaga.setCidade("Ponte Serrada");
	vaga.setDataCadastro(new Date(2016, 06, 10));
	vaga.setDataValidade(new Date(2016, 06, 12));
	vaga.setEntidade(entidade);
	entidade.adicionarVaga(vaga);
	
	Atuacao atuacao = new Atuacao();
	atuacao.setStatus("Em andamento");
	atuacao.setVaga(vaga);
	atuacao.setVoluntario(voluntario);
	atuacao.setData(new Date(2016, 06, 11));
	
	vaga.adicionarAtuacao(atuacao);
	
	UsuarioDAO usuarioDao = new UsuarioDAO();
	usuarioDao.salvar(usuarioPessoa);
	usuarioDao.salvar(usuarioEntidade);
	
	

}
}
