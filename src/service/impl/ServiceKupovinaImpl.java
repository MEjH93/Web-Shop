package service.impl;

import java.util.ArrayList;

import dao.DaoKupovina;
import dao.impl.DaoKupovinaImpl;
import domen.Stavke;
import domen.User;
import service.ServiceKupovina;

public class ServiceKupovinaImpl implements ServiceKupovina {

	@Override
	public void insertKupovine(ArrayList<Stavke> list, User u) {
		DaoKupovina dk = new DaoKupovinaImpl();
		dk.insertKupovine(list,u);

	}

}
