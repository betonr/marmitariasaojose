package persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import marmitariasj.Conexao;
import model.Tamanho;

public class TamanhoDAO {
	
	private Connection connection;

	public TamanhoDAO() {
        try {
			this.connection = new Conexao().getConnection();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
	
	public ArrayList<Tamanho> getTamanhos() {
        String sql = "select * from tamanho";
        ArrayList<Tamanho> tamanhos = new ArrayList<Tamanho>();
        
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
            	Tamanho t = new Tamanho();
            	t.setId(rs.getLong("id"));
            	t.setDescricao(rs.getString("descricao"));
            	t.setPreco(rs.getDouble("preco"));
            	
            	tamanhos.add(t);
            }
            
            stmt.close();
            return tamanhos;            
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
	
	public String getDescricaoById(Long id_tamamnho) {
		String sql = "select * from tamanho WHERE id = "+id_tamamnho;
        
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            
            ResultSet rs = stmt.executeQuery();
            String resposta = "";
            while (rs.next()) {
            	resposta = rs.getString("descricao");
            }
            
            stmt.close();  
            return resposta;
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}

}
