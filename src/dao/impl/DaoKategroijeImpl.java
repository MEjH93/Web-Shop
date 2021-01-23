package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.DaoKategorije;
import domen.Kategorije;
import util1.Konekcija;

public class DaoKategroijeImpl implements DaoKategorije {

	@Override
	public List<Kategorije> vratiKategorije() {
		Connection con = Konekcija.getInstanca().getConnection();
		PreparedStatement ps;
		ResultSet rs;
		String sql = "select *  from kategorija";
		List<Kategorije>list = new ArrayList<Kategorije>();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				Kategorije k = new Kategorije();
				k.setId(rs.getInt("id_kategorije"));
				k.setNaziv(rs.getString("naziv"));
				list.add(k);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			Konekcija.getInstanca().putConnection(con);
		}
		
		
		return list;
	}

}
