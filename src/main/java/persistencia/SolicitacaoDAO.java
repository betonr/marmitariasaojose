package persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.json.JSONObject;

import marmitariasj.Conexao;
import model.Solicitacao;

public class SolicitacaoDAO {
	
	private Connection connection;
	
	public SolicitacaoDAO() {
        try {
			this.connection = new Conexao().getConnection();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
	
	public void cadastra(Solicitacao solicitacao) {
		String sql = "INSERT INTO solicitacao (id_usuario, data, status) values (?,?,?)";
        
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            stmt.setLong(1, solicitacao.getId_usuario());
            stmt.setDate(2, solicitacao.getData());
            stmt.setInt(3, solicitacao.getStatus());
            
            stmt.execute();
            stmt.close();       
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public Long getUltimoId() {
		String sql = "SELECT * FROM solicitacao ORDER BY id DESC LIMIT 1";
		
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			long id = 0;
			while (rs.next()) {
				id = rs.getLong("id");
			}
			
			stmt.close();
			return id;			
						
		} catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public ArrayList<JSONObject> getByDataAndId(Long id_user, java.sql.Date data) {
		String sql = "SELECT * FROM solicitacao WHERE id_usuario = "+id_user+" AND data = '"+data+"'";
		
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();

			ArrayList<JSONObject> resultado = new ArrayList<JSONObject>();
			while (rs.next()) {
				JSONObject solicitacao = new JSONObject();
				
				solicitacao.put("status", rs.getInt("status"));
				solicitacao.put("data", rs.getDate("data"));
				solicitacao.put("id", rs.getInt("id"));
				
				PedidoDAO pedidoDAO = new PedidoDAO();
				ArrayList<JSONObject> pedidos = pedidoDAO.getPedidoByIdSolicitacao(rs.getLong("id"));
				solicitacao.put("produtos", pedidos);
				
				resultado.add(solicitacao);
			}
			
			stmt.close();
			return resultado;
						
		} catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public void atualizaStatus(int id, int status) {
		String sql = "UPDATE solicitacao SET status = ? WHERE id = ?";
		
		 try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            stmt.setInt(1, status);
            stmt.setInt(2, id);
            
            stmt.execute();
            stmt.close();       
					
		} catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public void delete(String id) {
		String sql = "DELETE FROM solicitacao WHERE id = "+id;
		
		 try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            
            stmt.execute();
            stmt.close();       
					
		} catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
}
