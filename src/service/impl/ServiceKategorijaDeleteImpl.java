package service.impl;

import dao.DaoKategorijaDelete;
import dao.impl.DaoKategorijaDeleteImpl;
import service.ServiceKategorijaDelete;

public class ServiceKategorijaDeleteImpl implements ServiceKategorijaDelete {

	@Override
	public void deleteKategorija(int id) {
	DaoKategorijaDelete dk = new DaoKategorijaDeleteImpl();
	dk.deleteKategorija(id);

	}

}
