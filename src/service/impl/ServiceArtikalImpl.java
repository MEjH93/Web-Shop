/**
 * 
 */
package service.impl;

import dao.DaoArtikal;
import dao.impl.DaoArtikalImpl;
import domen.Artikal;
import service.ServiceArtikal;

/**
 * @author JavA
 *
 */
public class ServiceArtikalImpl implements ServiceArtikal {

	@Override
	public void upisi(Artikal a) {
		DaoArtikal da = new DaoArtikalImpl();
		da.upisiArtikal(a);

	}

}
