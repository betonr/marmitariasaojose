package marmitariasj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	private String user = "postgres";
	private String password = "postgres";
	
	public Connection getConnection() throws ClassNotFoundException {
        try {
        	Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/marmitariasj", this.user, this.password);
            
        }catch(ClassNotFoundException ex){
			System.out.println("ERRO ENCONTRADO NA CONEXÃO (servidor): ");
			ex.printStackTrace();
			return null;
		
        }catch(SQLException ex){
			System.out.println("ERRO ENCONTRADO NO SQL: ");
			ex.printStackTrace();
			return null;
		}
    }

}
