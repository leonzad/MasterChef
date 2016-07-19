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
			
			//Nada elegante
			String pedido1 = valor(req, "pedido1", "");
			String pedido2 = valor(req, "pedido2", "");
			String pedido3 = valor(req, "pedido3", "");
			String pedido4 = valor(req, "pedido4", "");
			String pedido5 = valor(req, "pedido5", "");
			String pedido6 = valor(req, "pedido6", "");
			String pedido7 = valor(req, "pedido7", "");
			String pedido8 = valor(req, "pedido8", "");
			//Mas não consegui pensar em outra maneira
			
			if (op.equals("pedido1")) {
				PedidoDao.inclui(pedido1);
				msg = "Inclusão realizada com sucesso.";
			} if (op.equals("pedido2")) {
				PedidoDao.inclui(pedido2);
				msg = "Inclusão realizada com sucesso.";
			} if (op.equals("pedido3")) {
				PedidoDao.inclui(pedido3);
				msg = "Inclusão realizada com sucesso.";
			} if (op.equals("pedido4")) {
				PedidoDao.inclui(pedido4);
				msg = "Inclusão realizada com sucesso.";
			} if (op.equals("pedido5")) {
				PedidoDao.inclui(pedido5);
				msg = "Inclusão realizada com sucesso.";
			} if (op.equals("pedido6")) {
				PedidoDao.inclui(pedido6);
				msg = "Inclusão realizada com sucesso.";
			} if (op.equals("pedido7")) {
				PedidoDao.inclui(pedido7);
				msg = "Inclusão realizada com sucesso.";
			} if (op.equals("pedido8")) {
				PedidoDao.inclui(pedido8);
				msg = "Inclusão realizada com sucesso.";
			} else if (op.equals("")) {
				msg = "";
			} else {
				throw new IllegalArgumentException("Operação \"" + op + "\" não suportada.");
			}
			
			req.setAttribute("msg", msg);

			List<Cliente> clientes = RegistroDao.listar();
			req.setAttribute("clientes", clientes);
			
			List<Pedido> pedidos = PedidoDao.listar();
			req.setAttribute("pedidos", pedidos);				
			
			req.getRequestDispatcher("ClienteView.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace(resp.getWriter());
		}
	}
}
