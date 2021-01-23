package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.RegistracijaDao;
import domen.User;
import util.DB1;
import util1.Konekcija;


public class RegistracijaDaoImpl implements RegistracijaDao {

	@Override
	public void insertUser(User user) {
		
		Connection con = Konekcija.getInstanca().getConnection();
		PreparedStatement ps ;
		try {
			ps = con.prepareStatement(insertUser);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setInt(3, user.getStatus());
			ps.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			Konekcija.getInstanca().putConnection(con);
		}

	}

}
