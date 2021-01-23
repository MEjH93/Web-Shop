package controlerpl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domen.Konstante;
import domen.User;
import service.RegistarcijaService;
import service.ServiceVratiKorisnika;
import service.impl.RegistracijaServiceImpl;
import service.impl.ServiceVratiKlijentaImpl;

/**
 * Servlet implementation class ServletLOgin
 */
@WebServlet("/ServletLOgin")
public class ServletLOgin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vrednost = request.getParameter("submit");
		if(vrednost.equals("Login")) {
			String user = request.getParameter("user");
			String pass = request.getParameter("pass");
			User us = new User();
			us.setUsername(user);
			us.setPassword(pass);
			ServiceVratiKorisnika sv = new ServiceVratiKlijentaImpl();
			User podatakIzBaze = sv.getVrati(us);
			if(podatakIzBaze != null && podatakIzBaze.getStatus() == 1) {
				HttpSession sesija = request.getSession();
				sesija.setAttribute("ulogovaKorisnik", podatakIzBaze);//1,2
				request.getRequestDispatcher("webshop.jsp").forward(request, response);
			}else {
				response.sendRedirect("index.jsp");
			}
			
			
		}else {
			String user = request.getParameter("user1");
			String ime = request.getParameter("ime");
			String prezime = request.getParameter("prezime");
			String pass1 = request.getParameter("pass1");
			String pass2 = request.getParameter("pass2");
			if(pass1.equals(pass2)) {
				User u = new User();
				u.setIme(ime);
				u.setPrezime(prezime);
				u.setStatus(Konstante.USER.getId());
				u.setUsername(user);
				u.setPassword(pass1);
				RegistarcijaService rs = new RegistracijaServiceImpl();
				rs.inserUser(u);
				request.setAttribute("msg", "uspesno ste se registrovali");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else {
				response.sendRedirect("index.jsp");
			}
		}
	}

}
