package br.edu.unoesc.teste;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.dao.VagaDAO;
import br.edu.unoesc.dao.VoluntarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;

import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Vaga;


public class NovoTeste {

	public static void main(String[] args) throws DAOException {
		/*String bigLog = "";
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		Usuario entidadeSessao = usuarioDAO.buscar(Usuario.class, 1l);
		
		List<Vaga> vagas = entidadeSessao.getEntidade().getVagas();
		bigLog += "--------------------------------------------------------------------\n";
		bigLog += "Entidade que está aberta: " + entidadeSessao.getEntidade().getNomeEntidade() +"\n";
		bigLog += "Vagas abertas:"+"\n";
		for(Vaga vaga: vagas){
			bigLog += "\tCódigo:" + vaga.getCodigo() +"\n";
			bigLog += "\tDescrição:" + vaga.getDescricao() +"\n";
		}
		
		Usuario voluntarioSessao = usuarioDAO.buscar(Usuario.class, 2l);
		List<Atuacao> atuacoes = voluntarioSessao.getVoluntario().getAtuacoes();
		bigLog += "--------------------------------------------------------------------\n";
		bigLog += "Voluntário que está aberto: " + entidadeSessao.getEntidade().getNomeEntidade() +"\n";
		bigLog += "Atuações que participa:"+"\n";
		for(Atuacao atuacao: atuacoes){
			bigLog += "\tCódigo:" + atuacao.getCodigo() +"\n";
			bigLog += "\tDescrição:" + atuacao.getVaga().getDescricao() +"\n";
			bigLog += "\tDescrição:" + atuacao.getStatus() +"\n";
		}
		
		VagaDAO vagaDao = new VagaDAO();
		Vaga vaga = vagaDao.buscar(Vaga.class, 1l);
		
		Atuacao novaAtuacao = new Atuacao();
		novaAtuacao.setStatus("Inscrito");
		novaAtuacao.setData(new Date(2016, 04, 10));
		novaAtuacao.setVaga(vaga);
		novaAtuacao.setVoluntario(voluntarioSessao.getVoluntario());
		
		vaga.adicionarAtuacao(novaAtuacao);
		
		vagaDao.salvar(vaga);
		
		List<Atuacao> atuacoes2 = voluntarioSessao.getVoluntario().getAtuacoes();
		bigLog += "--------------------------------------------------------------------\n";
		bigLog += "Voluntário que está aberto: " + entidadeSessao.getEntidade().getNomeEntidade() +"\n";
		bigLog += "Atuações que participa:"+"\n";
		for(Atuacao atuacao: atuacoes2){
			bigLog += "\tCódigo:" + atuacao.getCodigo() +"\n";
			bigLog += "\tDescrição:" + atuacao.getVaga().getDescricao() +"\n";
			bigLog += "\tStatus:" + atuacao.getStatus() +"\n";
		}
		
		
		 for (int i = 0; i < 50; i++) {
		        System.out.println();
		  }
		System.out.println(bigLog);
		System.exit(0);
	}
	/* teste para alterar
	 * 
	 * Endereco endereco = new Endereco();
		endereco.setRua("aaas");
		
		Entidade teste = new Entidade();
		teste.setNomeEntidade("aa");
		teste.setAreaAtuacao("aa");
		teste.setEmail("aa");
		teste.setTelefone("aaa");
		teste.setDescricao("aaa");
		teste.setFotoEntidade("img");
		teste.setEndereco(endereco);
		
		UsuarioDAO usuarioDao = new UsuarioDAO();
		
		Usuario user = usuarioDao.buscar(Usuario.class, 1l);
		System.out.println(user.getEntidade().getEndereco().getRua());
		user.getEntidade().getEndereco().setRua("irineu");
		/*user.setLogin("a");
		user.setSenha("a");
		user.setEntidade(teste);
		
		System.out.println(user.getEntidade().getEndereco().getRua());
		usuarioDao.salvar(user);*/
	}
}
