package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.DaoVratiKlinet;
import domen.User;
import util1.Konekcija;

public class DaoVratiKlijentImpl implements DaoVratiKlinet {

	@Override
	public User vratiUsera(User user) {
		Connection con = Konekcija.getInstanca().getConnection();
		PreparedStatement ps;
		ResultSet rs;
		User us = null;
		String sql = "select * from user where username = ? and password = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			rs = ps.executeQuery();
			if(rs.next()) {
				us = new User();
				us.setId(rs.getInt("id"));
				us.setUsername(rs.getString("username"));
				us.setPassword(rs.getString("password"));
				us.setStatus(rs.getInt("status"));
				System.out.println("dkkdkdkdk");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			Konekcija.getInstanca().putConnection(con);
		}
		return us;
	}

}
