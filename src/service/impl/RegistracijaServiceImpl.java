package service.impl;


import javax.imageio.spi.ServiceRegistry;

import dao.RegistracijaDao;
import dao.impl.RegistracijaDaoImpl;
import domen.User;
import service.RegistarcijaService;

public class RegistracijaServiceImpl implements RegistarcijaService {

	@Override
	public void inserUser(User user) {
		
		RegistracijaDao rd = new RegistracijaDaoImpl();
		rd.insertUser(user);
	}

	
}
