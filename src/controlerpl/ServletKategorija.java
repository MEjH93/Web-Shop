package controlerpl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xerces.internal.parsers.IntegratedParserConfiguration;

import domen.Kategorije;
import service.ServiceKategorijaDelete;
import service.ServiceKategorijaInsert;
import service.ServiceUpdateKategorije;
import service.impl.ServiceKategorijaDeleteImpl;
import service.impl.ServiceKategorijeInsertImpl;
import service.impl.ServiceUpdateKategorijeImpl;

/**
 * Servlet implementation class ServletKategorija
 */
@WebServlet({"/ServletKategorija","/akcija/*"})
public class ServletKategorija extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String putanja = request.getPathInfo();
		if(putanja.equals("/updateKategorije")) {
			String id = request.getParameter("id");
			String naziv = request.getParameter("naziv");
			request.setAttribute("id", id);
			request.setAttribute("naziv", naziv);
			request.getRequestDispatcher("/updateKategorije.jsp").forward(request, response);
			
			
		}else if(putanja.equals("/deleteKategorije")){
			String id = request.getParameter("id");
			ServiceKategorijaDelete sk = new ServiceKategorijaDeleteImpl();
			sk.deleteKategorija(Integer.parseInt(id));
			response.sendRedirect("/CetvrtiProjekatSesije/kategorije.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String putanja = request.getPathInfo();
		if(putanja.equals("/updateKategorije")) {
			String id = request.getParameter("id");
			String naziv = request.getParameter("naziv");
			Kategorije k = new Kategorije();
			k.setId(Integer.parseInt(id));
			k.setNaziv(naziv);
			ServiceUpdateKategorije  su = new ServiceUpdateKategorijeImpl();
			su.updateKategorije(k);
			response.sendRedirect("/CetvrtiProjekatSesije/kategorije.jsp");
			
		}else if(putanja.equals("/insertKategoije")){
		
    		String naziv = request.getParameter("txt_kategorija");
    		Kategorije k = new Kategorije();
    		k.setNaziv(naziv);
    		ServiceKategorijaInsert sk = new ServiceKategorijeInsertImpl();
    		sk.insertKategorije(k);
    		response.sendRedirect("/CetvrtiProjekatSesije/kategorije.jsp");
		}
		
	}

}
