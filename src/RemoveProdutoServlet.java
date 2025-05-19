/** @author Vinicius do Nascimento Ayres (CB3025675) | Milena Costa de Andrade (CB3027171) */

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/removeProduto")
public class RemoveProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Banco _produtos = new Banco();
    

	@Override   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int id = Integer.parseInt(request.getParameter("id"));
		
		_produtos.remove(id);
		
		response.sendRedirect("listaProdutos");
	}

}
