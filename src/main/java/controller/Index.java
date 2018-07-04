package controller;

//import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import marmitariasj.Acao;
//import marmitariasj.FabricaJPA;
//import model.Pessoa;

public class Index implements Acao{

	@Override
    public String executa(HttpServletRequest request, HttpServletResponse response) {
		
//		EntityManager em = new FabricaJPA().getEntityManager();
//		
//		em.getTransaction().begin();
//		
//		Pessoa pessoa = em.find(Pessoa.class, 1);	
//		System.out.println(pessoa.getNome_completo());
//		
//		em.getTransaction().commit();
//		
//		em.close();
		
        return "/WEB-INF/publicas/index.jsp";
    }
}
