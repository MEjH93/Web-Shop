package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.DaoKategorijeInsert;
import domen.Kategorije;
import util1.Konekcija;

public class DaoKategorijeInsertImpl implements DaoKategorijeInsert {

	@Override
	public void insertKategorije(Kategorije k) {
		Connection con = Konekcija.getInstanca().getConnection();
		String insertKategorije = "insert into kategorija (naziv) values (?)";
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(insertKategorije);
			ps.setString(1,k.getNaziv());
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			Konekcija.getInstanca().putConnection(con);
		}
		

	}

}
