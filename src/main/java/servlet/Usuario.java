package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import marmitariasj.Acao;

@WebServlet(urlPatterns = "/usuario/*")
public class Usuario extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {

	    String acao = req.getRequestURI().substring(21).equals("/") || req.getRequestURI().substring(21).equals("")
	    		?  "index" : req.getRequestURI().substring(22);
	    	
	    try {
	        String nomeDaClasse = "controller.Usuario" + acao.substring(0, 1).toUpperCase() + acao.substring(1);
	        Class<?> type = Class.forName(nomeDaClasse);
	        
	        Acao instancia = (Acao) type.newInstance();
	        String pagina = instancia.executa(req, resp);

	        RequestDispatcher destino = req.getRequestDispatcher(pagina);
	        destino.forward(req, resp);
	        
	    } catch (Exception e) {
	    	RequestDispatcher destino = req.getRequestDispatcher("/WEB-INF/publicas/404.jsp");
	    	destino.forward(req, resp);
	     	
	    }
	}
}
