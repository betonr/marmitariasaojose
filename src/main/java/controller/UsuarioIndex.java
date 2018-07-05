package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

import marmitariasj.Acao;
import model.Produto;
import model.Tamanho;
import persistencia.ProdutoDAO;
import persistencia.TamanhoDAO;

public class UsuarioIndex implements Acao {

	@Override
	public void get(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ArrayList<Produto> produtos = new ProdutoDAO().getProdutos();
		req.setAttribute("produtos", produtos);
		
		ArrayList<Tamanho> tamanhos = new TamanhoDAO().getTamanhos();
		req.setAttribute("tamanhos", tamanhos);

		RequestDispatcher destino = req.getRequestDispatcher("/WEB-INF/usuario/index.jsp");
        destino.forward(req, resp);
	}

	@Override
	public void post(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void put(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	
}
