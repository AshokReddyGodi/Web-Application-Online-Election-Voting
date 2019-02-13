package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mvc.bean.VotersLoginBean;
import com.mvc.util.DBConnection;

public class VoterLoginDao {

	public String voterloginUser(VotersLoginBean votersloginBean)

	{
		// Keeping user entered values in temporary variables.
		String studentid = votersloginBean.getStudentId();
		String password = votersloginBean.getPassword();

		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String studentidDB = "";
		String passwordDB = "";
		try {
			// establishing connection
			con = DBConnection.createConnection();
			statement = con.createStatement();
			// Statement is used to write queries
			resultSet = statement.executeQuery("select * from voter where studentid= " + studentid);

			// Here table name is users and userName,password are columns. fetching all the
			// records and storing in a resultSet.
			// Until next row is present otherwise it return false
			while (resultSet.next()) {
				// fetch the values present in database
				studentidDB = resultSet.getString("studentid");
				passwordDB = resultSet.getString("password");

				//// If the user entered values are already present in database, which means
				//// user has already registered so I will return SUCCESS message.
				if (studentid.equals(studentidDB) && password.equals(passwordDB)) {
					return "SUCCESS";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// Just returning appropriate message otherwise
		return "invalid user credentials..";
	}
}