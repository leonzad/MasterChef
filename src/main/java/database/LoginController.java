package database;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
 create table registro (
  nome varchar(30),
  email varchar(30),
  usuario varchar(30),
  senha varchar(30)
  )
  
  create table contato (
	nome varchar(50),
	email varchar(50),
	msg varchar(1024)
  )
  
  insert into registro values('admin','123','gerente')  
  SELECT tablename FROM sys.systables where TABLETYPE <> 'S'
  
 Apagando todas as linhas da tabela...
 DELETE FROM TABLENAME WHERE 1=1
*/

@WebServlet("/main")
public class LoginController extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String URL = "jdbc:derby:db;create=true";

	private String valor(HttpServletRequest req, String param, String padrao) {
		String result = req.getParameter(param);
		if (result == null) {
			result = padrao;
		}
		return result;
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String msg = "";
			String op = valor(req, "operacao", "");
			String usuario = valor(req, "usuario", "");
			String nome = valor(req, "nome", "");
			String email = valor(req, "email", "");
			String msg1 = valor(req, "msg1", "");
			String senha = valor(req, "senha", "");
			// Abrir uma conexão com o banco de dados.
						Connection conn = DriverManager.getConnection(URL);
						//Query no BD procurando usuário e senha cadastrados
						PreparedStatement ps = conn.prepareStatement("select * from registro where usuario=? and senha=?");
						ps.setString(1, usuario);
						ps.setString(2, senha);
						ResultSet rs = ps.executeQuery();
						//Verificação	
						
						if (op.equals("registro")){
							resp.sendRedirect("/MasterChef2/registro");
						}
						
						else if (op.equals("feed")) {
							// Abrir uma conexão com o banco de dados.
							Connection conn2 = DriverManager.getConnection(URL);
							// Executar instrução SQL.
							String sql = "insert into contato (nome, email, msg) values (?, ?, ?)";
							PreparedStatement pstmt = conn2.prepareStatement(sql);
							pstmt.setString(1, nome);
							pstmt.setString(2, email);
							pstmt.setString(3, msg1);
							pstmt.executeUpdate();
							// Fechar sentença.
							pstmt.close();
							// Fechar conexão.
							conn2.close();						
						}
						else if (op.equals("entrar")) {
							if(rs.next()){
								//É de verdade.
								//Obter a sessão.
								HttpSession session = req.getSession();
								//Incluir variável na região de memória da sessão.
								session.setAttribute("usuario", usuario);				
								resp.sendRedirect("cliente");				
							
							}else {
							msg = "Usuário ou senha incorreta.";
						 }
						} else if (op.equals("")) {
							msg = "";
						} else {
							throw new IllegalArgumentException("Operação \"" + op + "\" não suportada.");
						}
						req.setAttribute("msg", msg);
						req.getRequestDispatcher("MainView.jsp").forward(req, resp);
					} catch (Exception e) {
						e.printStackTrace(resp.getWriter());
					}
				}
			}