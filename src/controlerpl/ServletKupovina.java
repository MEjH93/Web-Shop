package controlerpl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoKupovina;
import domen.Stavke;
import domen.User;
import service.ServiceKupovina;
import service.impl.ServiceKupovinaImpl;

/**
 * Servlet implementation class ServletKupovina
 */
@WebServlet("/ServletKupovina")
public class ServletKupovina extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesija = request.getSession();
		User u = (User) sesija.getAttribute("ulogovaKorisnik");
		if(u != null) {
    		ArrayList<Stavke>lista = (ArrayList<Stavke>)sesija.getAttribute("lista");
    		ServiceKupovina sk = new ServiceKupovinaImpl();
    		sk.insertKupovine(lista,u);
		}else {
			response.sendRedirect("kontakt.jsp");
		}
	}

}
