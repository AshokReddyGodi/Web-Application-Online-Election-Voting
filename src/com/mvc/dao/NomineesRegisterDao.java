package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.NomineesRegisterBean;
import com.mvc.util.DBConnection;

public class NomineesRegisterDao {

	public String nomineesregisterUser(NomineesRegisterBean nomineesregisterBean)

	{
		// Keeping user entered values in temporary variables.
		String nomineeid = nomineesregisterBean.getNomineeId();
		String nomineename = nomineesregisterBean.getNomineeName();
		String gender = nomineesregisterBean.getGender();
		String age = nomineesregisterBean.getAge();
		String username = nomineesregisterBean.getUsername();
		String password = nomineesregisterBean.getPassword();
		String description = nomineesregisterBean.getDescription();

		Connection con = null;

		PreparedStatement preparedstatement = null;

		try

		{
			con = DBConnection.createConnection();

			String query = "insert into nominees (nomineeid,nomineename,gender,age,username,password,description) values (?,?,?,?,?,?,?)";

			preparedstatement = con.prepareStatement(query);

			preparedstatement.setString(1, nomineeid);
			preparedstatement.setString(2, nomineename);
			preparedstatement.setString(3, gender);
			preparedstatement.setString(4, age);
			preparedstatement.setString(5, username);
			preparedstatement.setString(6, password);
			preparedstatement.setString(7, description);

			int i = preparedstatement.executeUpdate();

			if (i != 0)

				return "SUCCESS";

		} catch (SQLException e) {
			e.printStackTrace();

		}
		return "SUCCESS";

	}

}