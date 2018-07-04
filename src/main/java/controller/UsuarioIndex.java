package controller;

//import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

import marmitariasj.Acao;
//import marmitariasj.FabricaJPA;
import model.Produto;
import model.Tamanho;
//import model.Pessoa;
import persistencia.ProdutoDAO;
import persistencia.TamanhoDAO;

public class UsuarioIndex implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<Produto> produtos = new ProdutoDAO().getProdutos();
		request.setAttribute("produtos", produtos);
		
		ArrayList<Tamanho> tamanhos = new TamanhoDAO().getTamanhos();
		request.setAttribute("tamanhos", tamanhos);
		
		//GET com JPA e Hibernate
//		EntityManager em = new FabricaJPA().getEntityManager();
//		em.getTransaction().begin();
//		
//		Pessoa pessoa = em.find(Pessoa.class, 1);
//		
//		em.getTransaction().commit();
//		
//		request.setAttribute("usuario", pessoa);
//		em.close();
		
		return "/WEB-INF/usuario/index.jsp";
	}
	
}
