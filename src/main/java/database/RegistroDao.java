package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * DAO = Data Access Object.
 */
public class RegistroDao {
	
	private static final String URL = "jdbc:derby:db;create=true";

	public static void inclui(String nome, String email, String usuario, String senha) throws SQLException {
		// Abrir uma conexão com o banco de dados.
		Connection conn = DriverManager.getConnection(URL);
		//Query no BD procurando usuário e senha cadastrados
			String sql = "insert into registro (nome, email, usuario, senha) values (?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nome);
			pstmt.setString(2, email);
			pstmt.setString(3, usuario);
			pstmt.setString(4, senha);
			pstmt.executeUpdate();
			// Fechar sentença.
			pstmt.close();
			// Fechar conexão.
			conn.close();
	}
}
