package dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import dao.DaoKupovina;
import domen.Stavke;
import domen.User;
import util1.Konekcija;

public class DaoKupovinaImpl implements DaoKupovina {

	@Override
	public void insertKupovine(ArrayList<Stavke> list, User u) {
		
		Connection con = Konekcija.getInstanca().getConnection();
		String sqlPorudzbina = "insert into porudzbina(id_usera, datum)values(?,?)";
		try {
			con.setAutoCommit(false);
			PreparedStatement ps = con.prepareStatement(sqlPorudzbina);
			
			ps.setInt(1, u.getId());
			ps.setDate(2, Date.valueOf(LocalDateTime.now().toLocalDate()));
			ps.execute();
			String sqlVratiPorudzbinu= "SELECT * FROM porudzbina ORDER BY id_porudzbine DESC LIMIT 1" ;
			ps = con.prepareStatement(sqlVratiPorudzbinu);
			ResultSet rs = ps.executeQuery();
			int idPorudzbine = 0;
			if(rs.next()) {
				idPorudzbine = rs.getInt("id_porudzbine");
			}
			 	 	 
			String sqlInsertPoruzdbina ="insert into stavke (id_porudzbine,id_artikla,kolicina)values (?,?,?)";
			for(Stavke s : list) {
				ps = con.prepareStatement(sqlInsertPoruzdbina);
				ps.setInt(1, idPorudzbine);
				ps.setInt(2,s.getIdArtikla());
				ps.setInt(3, s.getKolicina());
				ps.execute();
			}
			con.commit();
			
		} catch (SQLException e) {
			try {
				e.printStackTrace();
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		finally {
			Konekcija.getInstanca().putConnection(con);
		}

	}

}
