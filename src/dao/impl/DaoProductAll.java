package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domen.Artikal;
import util1.Konekcija;

public class DaoProductAll {
	public List<Artikal>list(){
		Connection con = Konekcija.getInstanca().getConnection();
		List<Artikal>listaArtikala= new ArrayList<Artikal>();
		String sql ="select *  from artikal";//inner join kategorije on artikal.idKategorije= kategorija.idkategorioje
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Artikal a = new Artikal();
				a.setIdArtikla(rs.getInt("id_artikla"));
				a.setCena(rs.getDouble("cena"));
				a.setImeSlike(rs.getString("slika"));
				a.setNaziv(rs.getString("naziv"));
				listaArtikala.add(a);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			Konekcija.getInstanca().putConnection(con);
		}
		return listaArtikala;
		
	}

}
