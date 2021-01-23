package controlerpl;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import domen.Artikal;
import service.ServiceArtikal;
import service.impl.ServiceArtikalImpl;





/**
 * Servlet implementation class ServletArtikal
 */
@WebServlet("/ServletArtikal")
@MultipartConfig(maxFileSize = 1024*1024*10)//multi part konfig je anotacija koja sluzi da 
//pokupite sliek i da radite sa njima i ogranicavate velicinu
public class ServletArtikal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String naziv = request.getParameter("naziv");
		double cena = Double.parseDouble(request.getParameter("cena"));
		Part part = request.getPart("file");
		String imeFile = getFile(part);
		int a = imeFile.lastIndexOf("\\");
		imeFile = imeFile.substring(a+1);
		
		String uploadFile = "C:\\Users\\JavA\\eclipse-workspace\\CetvrtiProjekatSesijeNastvak\\WebContent\\slike\\";
		File f = new File(uploadFile);
		if(!f.exists()) {
			f.mkdir();
		}
		String ime = uploadFile+imeFile;
		part.write(ime);
		Artikal art = new Artikal();
		art.setCena(cena);
		art.setNaziv(naziv);
		art.setIdKategorije(Integer.parseInt(id));
		art.setImeSlike(imeFile);
		ServiceArtikal sa = new ServiceArtikalImpl();
		sa.upisi(art);
		response.sendRedirect("product.jsp");
	}

	private String getFile(Part part) {
			for(String content :  part.getHeader("content-disposition").split(";")) {
				if(content.trim().startsWith("filename")) {
					return content.substring(content.indexOf("=")+2, content.length()-1);
				}
				
			}
		return null;
	}

}
