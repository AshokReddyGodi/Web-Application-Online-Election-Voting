package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.VotersRegisterBean;
import com.mvc.util.DBConnection;

public class VoterRegisterDao {

	public String voterregisterUser(VotersRegisterBean votersregisterBean) {

		// Keeping user entered values in temporary variables.
		String studentid = votersregisterBean.getStudentId();
		String studentname = votersregisterBean.getStudentName();
		String gender = votersregisterBean.getGender();
		String department = votersregisterBean.getDepartment();
		String year = votersregisterBean.getYear();
		String Password = votersregisterBean.getPassword();
		String repeatpassword = votersregisterBean.getRepeatPassword();

		Connection con = null;

		PreparedStatement preparedstatement = null;

		try {
			con = DBConnection.createConnection();

			String query = "insert into voter (studentid,studentname,gender,department,year,Password,repeatpassword) values (?,?,?,?,?,?,?)";

			preparedstatement = con.prepareStatement(query);

			preparedstatement.setString(1, studentid);
			preparedstatement.setString(2, studentname);
			preparedstatement.setString(3, gender);
			preparedstatement.setString(4, department);
			preparedstatement.setString(5, year);
			preparedstatement.setString(6, Password);
			preparedstatement.setString(7, repeatpassword);

			int i = preparedstatement.executeUpdate();

			if (i != 0)

				return "SUCCESS";

		} catch (SQLException e) {
			e.printStackTrace();

		}
		return "oops... something went wrong there ...!";

	}

}
