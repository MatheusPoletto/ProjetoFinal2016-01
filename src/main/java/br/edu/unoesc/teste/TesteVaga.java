package br.edu.unoesc.teste;

import java.util.ArrayList;
import java.util.List;

import br.edu.unoesc.dao.VagaDAO;
import br.edu.unoesc.model.Vaga;

public class TesteVaga {

	public static void main(String[] args) {
		/*VagaDAO vagaDao = new VagaDAO();
		List<Vaga> vagas  = new ArrayList<>();
		//vagas = vagaDao.listarAbertas();
		
		vagas = vagaDao.listar(Vaga.class);
	
		for(Vaga vaga : vagas){
			System.out.println(vaga.getDescricao());
		}*/
		
		VagaDAO vagaDao = new VagaDAO();
		
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
		
	}

}
