package controlerpl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.DaoProductImplKategorija;
import domen.Artikal;

/**
 * Servlet implementation class ServletKategorijePrikaz
 */
@WebServlet("/ServletKategorijePrikaz")
public class ServletKategorijePrikaz extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		DaoProductImplKategorija dao = new DaoProductImplKategorija();
		List<Artikal> list =dao.vrati(Integer.parseInt(id));
		request.setAttribute("list", list);
		//response.sendRedirect("index.jsp");
		request.getRequestDispatcher("/productkategorija.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
