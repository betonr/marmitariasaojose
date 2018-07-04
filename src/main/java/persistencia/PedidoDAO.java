package persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.json.JSONObject;

import marmitariasj.Conexao;
import model.Pedido;

public class PedidoDAO {
	
	private Connection connection;
	
	public PedidoDAO() {
        try {
			this.connection = new Conexao().getConnection();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
	
	public void cadastra(Pedido pedido) {
		String sql = "insert into pedido (id_solicitacao, id_produto, id_tamanho, quantidade, observacao) values (?,?,?,?,?)";
        
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            stmt.setLong(1, pedido.getId_solicitacao());
            stmt.setLong(2, pedido.getId_produto());
            stmt.setLong(3, pedido.getId_tamanho());
            stmt.setInt(4, pedido.getQuantidade());
            stmt.setString(5, pedido.getObservacao());
            
            stmt.execute();
            stmt.close();       
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public ArrayList<JSONObject> getPedidoByIdSolicitacao(Long id_solicitacao) {
		String sql = "select * from pedido WHERE id_solicitacao = "+id_solicitacao;
		
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();

			ArrayList<JSONObject> resultado = new ArrayList<JSONObject>();
			while (rs.next()) {
				JSONObject pedido = new JSONObject();
				
				ProdutoDAO produtoDAO = new ProdutoDAO();
				String opcao = produtoDAO.getTitleById(rs.getLong("id_produto"));
				
				TamanhoDAO tamanhoDAO = new TamanhoDAO();
				String tamanho = tamanhoDAO.getDescricaoById(rs.getLong("id_tamanho"));
				
				pedido.put("opcao", opcao);
				pedido.put("tamanho", tamanho);
				pedido.put("quantidade", rs.getInt("quantidade"));
				pedido.put("observacao", rs.getString("observacao"));
				
				resultado.add(pedido);
			}
			
			stmt.close();
			return resultado;
						
		} catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}

}
