package persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import marmitariasj.Conexao;
import model.Produto;

public class ProdutoDAO {
	
	private Connection connection;
	
	public ProdutoDAO() {
        try {
			this.connection = new Conexao().getConnection();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
	
	public ArrayList<Produto> getProdutos() {
        String sql = "select * from produto";
        ArrayList<Produto> produtos = new ArrayList<Produto>();
        
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
            	Produto p = new Produto();
            	p.setId(rs.getLong("id"));
            	p.setNumero_opcao(rs.getInt("numero_opcao"));
            	p.setTitulo(rs.getString("titulo"));
            	p.setDescricao(rs.getString("descricao"));
            	p.setAcompanhamento(rs.getString("acompanhamento"));
            	
            	produtos.add(p);
            }
            
            stmt.close();
            return produtos;            
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
	
	public String getTitleById(Long number_opt) {
		String sql = "select * from produto WHERE numero_opcao = "+number_opt;
        
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            
            ResultSet rs = stmt.executeQuery();
            String resposta = "";
            while (rs.next()) {
            	resposta = rs.getString("titulo");
            }
            
            stmt.close();  
            return resposta;
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}

}
