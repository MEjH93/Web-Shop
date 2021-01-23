package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domen.Artikal;
import util1.Konekcija;

public class DaoProductImplKategorija {
	public List<Artikal>vrati(int id){
		Connection con = Konekcija.getInstanca().getConnection();
		String sql ="select * from artikal where idKategorije = ?";
		List<Artikal>list = new ArrayList<Artikal>();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Artikal a = new Artikal();
				a.setCena(rs.getDouble("cena"));
				a.setNaziv(rs.getString("naziv"));
				a.setImeSlike(rs.getString("slika"));
				a.setIdArtikla(rs.getInt("id_artikla"));
				a.setIdKategorije(rs.getInt("idKategorije"));
				list.add(a);
				
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
