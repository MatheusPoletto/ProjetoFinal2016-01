package br.edu.unoesc.teste;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import br.edu.unoesc.dao.AtuacaoDAO;
import br.edu.unoesc.dao.VagaDAO;
import br.edu.unoesc.dao.VoluntarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Vaga;
import br.edu.unoesc.model.Voluntario;

public class TesteVagaAtuacao {
	
	public static void main(String[] args) throws DAOException {
		VagaDAO atDao = new VagaDAO();
		
		List<Vaga> at = new ArrayList<>();
		//at = atDao.vagasDisponiveis(1l);
		
		VoluntarioDAO volDao = new VoluntarioDAO();
		
		//Vaga vaga = at.get(2);
		//vaga.adicionarAtuacao(new Atuacao("Aguardando confirmação", volDao.buscar(Voluntario.class, 1l), vaga, new Date(Calendar.getInstance().getTime().getTime())));
		//atDao.salvar(vaga);
		
		for(Vaga v : at){
			System.out.println("Vaga: " +v.getDescricao());
			for(Atuacao a : v.getAtuacao()){
				System.out.println("Atuação: " +a.getStatus()+ " - Cod. vaga: " +a.getVaga().getCodigo() );
			}
		}
		
		
		AtuacaoDAO atuacaoDao = new AtuacaoDAO();
		List<Atuacao> atuacoesConfirmar = atuacaoDao.atuacoesParaConfirmar(1l);
		
		for(Atuacao atu : atuacoesConfirmar){
			System.out.println(atu.getStatus());
		}
		
		System.exit(0);
	}

	
	
}
