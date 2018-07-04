package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import model.Pedido;
import model.Solicitacao;
import persistencia.PedidoDAO;
import persistencia.SolicitacaoDAO;

@WebServlet(urlPatterns = "/solicitacao")
public class Solicita extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private static final long id_user = 1;
	
	private java.sql.Date convertData(String data) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date parsed = null;
		try {
			parsed = format.parse(data);
		} catch (ParseException e) {
			e.printStackTrace();
		}
        return new java.sql.Date(parsed.getTime());
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		String dataStr = req.getParameter("data");
		java.sql.Date data = this.convertData(dataStr);
		
		SolicitacaoDAO solicitacaoDAO = new SolicitacaoDAO();
		ArrayList<JSONObject> resposta = solicitacaoDAO.getByDataAndId(id_user, data);
		
		PrintWriter out = resp.getWriter();
		out.print(resposta.toString());
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		//corpo da requisição
		BufferedReader reader = req.getReader();		
		JSONObject infos = new JSONObject(reader.readLine());
		
		//criando uma solicitação
		Solicitacao solicita = new Solicitacao();
		solicita.setId_usuario(id_user);
		solicita.setStatus(infos.getInt("status"));
		String dataStr = infos.getString("data").substring(0,infos.getString("data").indexOf("T"));
		java.sql.Date data = this.convertData(dataStr);
        solicita.setData(data);
		
        //comitando a solicitacao
		SolicitacaoDAO solicitaDAO = new SolicitacaoDAO();
		solicitaDAO.cadastra(solicita);
		
		//pegando o id da solicitação
		Long id_solicitacao = solicitaDAO.getUltimoId();				
		
		//criando os pedidos relacionados a essa solicitacao
		for(Object produto : infos.getJSONArray("produtos")) {
			JSONObject infosProduto = new JSONObject(produto.toString());
			
			Pedido novoPedido = new Pedido();
			novoPedido.setId_solicitacao(id_solicitacao);
			novoPedido.setId_produto(infosProduto.getLong("opcao"));
			novoPedido.setId_tamanho(infosProduto.getLong("tamanho"));
			novoPedido.setQuantidade(infosProduto.getInt("quantidade"));
			novoPedido.setObservacao(infosProduto.getString("obs"));
			
			PedidoDAO pedidoDAO = new PedidoDAO();
			pedidoDAO.cadastra(novoPedido);
		}
		
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		StringBuilder resposta = new StringBuilder();
		resposta.append("{\"status\": true}");
		out.print(resposta.toString());
	}
	
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		//corpo da requisição
		BufferedReader reader = req.getReader();
		JSONObject infos = new JSONObject(reader.readLine());
		
		SolicitacaoDAO solicitaDAO = new SolicitacaoDAO();
		solicitaDAO.atualizaStatus(infos.getInt("id"), infos.getInt("status"));
		
		PrintWriter out = resp.getWriter();
		StringBuilder resposta = new StringBuilder();
		resposta.append("{\"status\": true}");
		out.print(resposta.toString());
	}
	
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		String id = req.getParameter("id");
		
		SolicitacaoDAO solicitaDAO = new SolicitacaoDAO();
		solicitaDAO.delete(id);
		
		PrintWriter out = resp.getWriter();
		StringBuilder resposta = new StringBuilder();
		resposta.append("{\"status\": true}");
		out.print(resposta.toString());
	}
	
}
