package database;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
create table registro (
 usuario varchar(30),
 senha varchar(30),
 role varchar(30)
 )
 
 create table contato (
	nome varchar(50),
	email varchar(50),
	msg varchar(1024)
 )
 
 create table pedido(
  prato varchar(30),
  preco varchar(15)
  mesa varchar(10)
  )
 
 insert into registro values('admin','123','gerente')  
 SELECT tablename FROM sys.systables where TABLETYPE <> 'S'
 
Apagando todas as linhas da tabela...
DELETE FROM TABLENAME WHERE 1=1
*/

@WebServlet("/cliente")
public class ClienteController extends HttpServlet {

	private static final long serialVersionUID = 1L;

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
			String msg = null;
			String op = valor(req, "operacao", "");
			//int qtd = toInt(req, "qtd", "0");
			String usuario = valor(req, "nome", "");
			String senha = valor(req, "senha", "");
			String pedido = valor(req, "pedido", "");
			if (op.equals("incluir")) {
				ClienteDao.inclui(usuario, senha);
				msg = "Inclusão realizada com sucesso.";
			} else if (op.equals("alterar")) {
				ClienteDao.alterar(usuario, senha);
				msg = "Alteração realizada com sucesso.";
			} else if (op.equals("excluir")) {
				ClienteDao.excluir(usuario);
				resp.sendRedirect("cliente");
				msg = "Exclusão realizada com sucesso.";
			} else if (op.equals("pedido")){
				PedidoDao.inclui(pedido);
			} else if (op.equals("")) {
				msg = "";
			} else {
				throw new IllegalArgumentException("Operação \"" + op + "\" não suportada.");
			}
			
			req.setAttribute("msg", msg);

			List<Cliente> clientes = ClienteDao.listar();
			req.setAttribute("clientes", clientes);
			
			req.getRequestDispatcher("ClienteView.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace(resp.getWriter());
		}
	}
}
