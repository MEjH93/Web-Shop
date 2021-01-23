package controlerpl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domen.Artikal;
import domen.Stavke;

/**
 * Servlet implementation class ServletKorpa
 */
@WebServlet("/ServletKorpa")
public class ServletKorpa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		HttpSession sesija = request.getSession();
		String id = request.getParameter("idartikla");
		String kolicina = request.getParameter("kolicina");
		int vrednost = Integer.parseInt(kolicina);
		System.out.println(vrednost);
		if(vrednost >= 1) {
		
		Stavke s = new Stavke();
		s.setIdArtikla(Integer.parseInt(id));
		s.setKolicina(vrednost);
		ArrayList<Stavke>lista = (ArrayList<Stavke>)sesija.getAttribute("lista");
		
		if(lista == null) {
			lista = new ArrayList<>();
		}
		lista.add(s);
		sesija.setAttribute("lista", lista);
		response.sendRedirect("webshop.jsp");
		}else {
			response.sendRedirect("webshop.jsp");
		}
		}catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("webshop.jsp");
		}
		
	}

}
