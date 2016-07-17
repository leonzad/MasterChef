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
public class ClienteDao {

	private static final String URL = "jdbc:derby:db;create=true";

	public static void inclui(String usuario, String senha) throws SQLException {
		// Abrir uma conexão com o banco de dados.
		Connection conn = DriverManager.getConnection(URL);
		// Executar instrução SQL.
		String sql = "insert into registro (usuario, senha) values (?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, usuario);
		pstmt.setString(2, senha);
		pstmt.executeUpdate();
		// Fechar sentença.
		pstmt.close();
		// Fechar conexão.
		conn.close();
	}

	public static void alterar(String usuario, String senha) throws SQLException {
		// Abrir uma conexão com o banco de dados.
		Connection conn = DriverManager.getConnection(URL);
		// Executar instrução SQL.
		String sql = "update cliente set usuario = ? where senha = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, usuario);
		pstmt.setString(2, senha);
		pstmt.executeUpdate();
		// Fechar sentença.
		pstmt.close();
		// Fechar conexão.
		conn.close();
	}

	public static void excluir(String usuario) throws SQLException {
		// Abrir uma conexão com o banco de dados.
		Connection conn = DriverManager.getConnection(URL);
		// Executar instrução SQL.
		String sql = "delete from registro where usuario = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, usuario);
		pstmt.executeUpdate();
		// Fechar sentença.
		pstmt.close();
		// Fechar conexão.
		conn.close();
	}

	public static List<Cliente> listar() throws SQLException {
		// Abrir uma conexão com o banco de dados.
		Connection conn = DriverManager.getConnection(URL);
		// Executar instrução SQL.
		String sql = "select usuario, senha from registro";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// Represneta o resultado da execução.
		ResultSet rs = pstmt.executeQuery();
		
		List<Cliente> clientes = new ArrayList<>();
		while (rs.next()) {
			String usuario = rs.getString("usuario");
			String senha = rs.getString("senha");
			Cliente cliente = new Cliente(usuario, senha);
			clientes.add(cliente);
		}
	
		// Fechar resultado.
		rs.close();
		// Fechar sentença.
		pstmt.close();
		// Fechar conexão.
		conn.close();
		
		return clientes;
	}
}
