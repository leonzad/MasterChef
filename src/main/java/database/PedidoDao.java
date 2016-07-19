package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PedidoDao {
	
	private static final String URL = "jdbc:derby:db;create=true";

	public static void inclui(String pedido) throws SQLException {
		// Abrir uma conexão com o banco de dados.
		Connection conn = DriverManager.getConnection(URL);
		// Executar instrução SQL.
		String sql = "insert into pedido (pedido) values (?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, pedido);
		pstmt.executeUpdate();
		// Fechar sentença.
		pstmt.close();
		// Fechar conexão.
		conn.close();
	}
	
	public static List<Pedido> listar() throws SQLException {
		// Abrir uma conexão com o banco de dados.
		Connection conn = DriverManager.getConnection(URL);
		// Executar instrução SQL.
		String sql = "select pedido from pedido";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// Representa o resultado da execução.
		ResultSet rs = pstmt.executeQuery();
		
		List<Pedido> pedidos = new ArrayList<>();
		while (rs.next()) {
			String pedido = rs.getString("pedido");
			Pedido pedido1 = new Pedido(pedido);
			pedidos.add(pedido1);
		}
	
		// Fechar resultado.
		rs.close();
		// Fechar sentença.
		pstmt.close();
		// Fechar conexão.
		conn.close();
		
		return pedidos;
	}
	
	
		
}


