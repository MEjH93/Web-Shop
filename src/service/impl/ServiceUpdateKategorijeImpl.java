package service.impl;

import dao.DaoUpdateKategorije;
import dao.impl.DaoUpdateKategorijeImpl;
import domen.Kategorije;
import service.ServiceUpdateKategorije;

public class ServiceUpdateKategorijeImpl implements ServiceUpdateKategorije {

	@Override
	public void updateKategorije(Kategorije k) {
		DaoUpdateKategorije du = new DaoUpdateKategorijeImpl();
		du.updateKategorije(k);

	}

}
