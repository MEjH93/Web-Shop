package service.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dao.DaoVratiKlinet;
import dao.impl.DaoVratiKlijentImpl;
import domen.User;
import service.ServiceVratiKorisnika;

public class ServiceVratiKlijentaImpl implements ServiceVratiKorisnika {

	@Override
	public User getVrati(User user) {		
		DaoVratiKlinet dk = new DaoVratiKlijentImpl();
		return dk.vratiUsera(user);
	}

}
