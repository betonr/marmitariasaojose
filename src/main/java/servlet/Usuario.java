package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import marmitariasj.Acao;

@WebServlet(urlPatterns = "/usuario/*")
public class Usuario extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();  
		model.Usuario usuario = (model.Usuario) session.getAttribute("usuario");  
		
		if(usuario != null && !usuario.getId().toString().isEmpty()) {
			String acao = req.getRequestURI().substring(21).equals("/") || req.getRequestURI().substring(21).equals("")
		    		?  "index" : req.getRequestURI().substring(22);
		    	
		    try {
		    	String nomeDaClasse = "controller.Usuario" + acao.substring(0, 1).toUpperCase() + acao.substring(1);
		        Class<?> type = Class.forName(nomeDaClasse);
		        
		        Acao instancia = (Acao) type.newInstance();
		        switch(req.getMethod()) {
		        	case "GET":
		        		instancia.get(req, resp);
		        		break;
		        	case "POST":
		        		instancia.post(req, resp);
		        		break;
		        	case "PUT":
		        		instancia.put(req, resp);
		        		break;
		        	case "DELETE":
		        		instancia.delete(req, resp);
		        		break;	
		        }
		        
		    } catch (Exception e) {
		    	RequestDispatcher destino = req.getRequestDispatcher("/WEB-INF/publicas/404.jsp");
		    	destino.forward(req, resp);
		    }
		
		} else {
			resp.sendRedirect("/marmitariasj/public/login");
		}
	}
}
