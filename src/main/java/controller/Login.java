package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import marmitariasj.Acao;
import marmitariasj.FabricaJPA;
import model.Usuario;

public class Login implements Acao{
	
	@Override
	public void get(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		RequestDispatcher destino = req.getRequestDispatcher("/WEB-INF/publicas/login.jsp");
        destino.forward(req, resp);
	}
	
	@Override
	public void post(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		//corpo da requisição
		BufferedReader reader = req.getReader();		
		JSONObject infos = new JSONObject(reader.readLine());
		
		String login = infos.getString("login");
		String senha = infos.getString("senha");
		
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		StringBuilder resposta = new StringBuilder();

		try {
			Usuario usuario = null;
			EntityManager em = new FabricaJPA().getEntityManager();
			em.getTransaction().begin();
			
			usuario = em
					.createQuery("SELECT u from Usuario u WHERE u.login LIKE :login", Usuario.class)
					.setParameter("login", login).getSingleResult();
		
			em.getTransaction().commit();
			em.close();
			
			if(usuario.getSenha().equals(senha)) {
				HttpSession session=req.getSession();  
		        session.setAttribute("usuario", usuario);
				
				resposta.append("{\"status\": true}");
				out.print(resposta.toString());
			} else {
				resposta.append("{\"status\": false, \"msg\": \"senha Incorreta!\"}");
				out.print(resposta.toString());
			}
			
		} catch (Exception e) {
			resposta.append("{\"status\": false, \"msg\": \"usuário não encontrado!\"}");
			out.print(resposta.toString());
		}
		
	}

	@Override
	public void put(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	@Override
	public void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
