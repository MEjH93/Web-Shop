package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.DaoKategorijaDelete;
import util1.Konekcija;

public class DaoKategorijaDeleteImpl implements DaoKategorijaDelete {

	@Override
	public void deleteKategorija(int id) {
		Connection con = Konekcija.getInstanca().getConnection();
		String sqlDelete = "delete from kategorija where id_kategorije  = ?";
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sqlDelete);
			ps.setInt(1, id);
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
