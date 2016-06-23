package br.edu.unoesc.teste;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import br.edu.unoesc.dao.AtuacaoDAO;
import br.edu.unoesc.dao.AvatarDAO;
import br.edu.unoesc.dao.EntidadeDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.dao.VagaDAO;
import br.edu.unoesc.dao.VoluntarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Atuacao;
import br.edu.unoesc.model.Avatar;
import br.edu.unoesc.model.Endereco;
import br.edu.unoesc.model.Entidade;
import br.edu.unoesc.model.Usuario;
import br.edu.unoesc.model.Vaga;
import br.edu.unoesc.model.Voluntario;

public class TestesNovoMapeamento {

	public static void main(String[] args) throws DAOException {
		AtuacaoDAO atDao = new AtuacaoDAO();
		List<Atuacao> atuacoes = atDao.buscaAtuacoes(1l);
		
		for(Atuacao at : atuacoes){
			System.out.println(at.getStatus());
		}

		VoluntarioDAO volDao = new VoluntarioDAO();
		VagaDAO vagaDao = new VagaDAO();
		Vaga vaga = vagaDao.buscar(Vaga.class, 2l);
		//boolean salvou = vaga.adicionarVaga(new Atuacao("Aguardando confirmação", volDao.buscar(Voluntario.class, 1l), vaga, new Date(Calendar.getInstance().getTime().getTime())));
		vagaDao.salvar(vaga);
		
	//	if(salvou){
			System.out.println("add e salvou");
		//}else{
			System.out.println("no e save");
		//}
		
		
		EntidadeDAO entidadeDao = new EntidadeDAO();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
		Calendar calendar = new GregorianCalendar(2016,7-1,28);	
		//Vaga vaga2 = new Vaga("Auxiliar para pintura", 3, "Preciso de alguém com experência no ramo.", 2, "Urgente", "Sim", "SC", "Ponte Serrada", calendar.getTime(), entidadeDao.buscar(Entidade.class, 1l));
		
		//vagaDao.salvar(vaga2);
		
		
	}

}
