package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.DaoUpdateKategorije;
import domen.Kategorije;
import util1.Konekcija;

public class DaoUpdateKategorijeImpl implements DaoUpdateKategorije {

	@Override
	public void updateKategorije(Kategorije k) {
		Connection con = Konekcija.getInstanca().getConnection();
		String sql = " update kategorija set naziv =  ?  where id_kategorije  =  ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, k.getNaziv());
			ps.setInt(2, k.getId());
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
