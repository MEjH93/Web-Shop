package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.DaoArtikal;
import domen.Artikal;
import util1.Konekcija;

public class DaoArtikalImpl implements DaoArtikal {

	@Override
	public void upisiArtikal(Artikal a) {
		Connection con = Konekcija.getInstanca().getConnection();
		String sql = "insert into artikal(naziv, cena, slika, idKategorije) values (?,?,?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, a.getNaziv());
			ps.setDouble(2, a.getCena());
			ps.setString(3, a.getImeSlike());
			ps.setInt(4, a.getIdKategorije());
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
