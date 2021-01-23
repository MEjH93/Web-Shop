package service.impl;

import dao.DaoKategorijeInsert;
import dao.impl.DaoKategorijeInsertImpl;
import domen.Kategorije;
import service.ServiceKategorijaInsert;

public class ServiceKategorijeInsertImpl implements ServiceKategorijaInsert {

	@Override
	public void insertKategorije(Kategorije k) {
		DaoKategorijeInsert dk = new DaoKategorijeInsertImpl();
		dk.insertKategorije(k);

	}

}
