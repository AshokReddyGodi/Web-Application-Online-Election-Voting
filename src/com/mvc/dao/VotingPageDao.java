package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.VotingPage1Bean;
import com.mvc.util.DBConnection;

public class VotingPageDao {

	public String nomineesregisterUser(VotingPage1Bean nomineesregisterBean) {

		// Keeping user entered values in temporary variables.
		String nominees = nomineesregisterBean.getNominees();

		Connection con = null;

		PreparedStatement preparedstatement = null;

		try {
			con = DBConnection.createConnection();

			String query = "insert into result (nominees) values (?)";

			preparedstatement = con.prepareStatement(query);

			preparedstatement.setString(1, nominees);

			int i = preparedstatement.executeUpdate();

			if (i != 0)

				return "SUCCESS";

		} catch (SQLException e) {
			e.printStackTrace();

		}
		return "SUCCESS";

	}

	public static int delete(VotingPage1Bean u) {
		int status = 0;

		try {
			Connection con = DBConnection.createConnection();
			PreparedStatement ps = con.prepareStatement("delete from nominees where nomineeid=?");
			ps.setString(1, u.getNominees());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}
}