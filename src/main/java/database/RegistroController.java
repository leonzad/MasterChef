package database;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistroController
 */
@WebServlet("/registro")
public class RegistroController extends HttpServlet {
	
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
			
			String op = valor(req, "operacao", "");
			String usuario = valor(req, "usuario", "");
			String senha = valor(req, "senha", "");
			String nome = valor(req, "nome", "");
            String sobrenome = valor(req, "sobrenome", "");
            String email = valor(req, "email","");
			
			if (op.equals("registro")) {
				RegistroDao.inclui(nome, email, usuario, senha);
				resp.sendRedirect("main");
			}
			
			List<Cliente> clientes = RegistroDao.listar();
			req.setAttribute("clientes", clientes);	
			
			
			req.getRequestDispatcher("RegistroView.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace(resp.getWriter());
		}
	}
}
