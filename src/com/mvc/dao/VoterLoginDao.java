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
		String studentid = votersloginBean.getStudentId(); // Keeping user entered values in temporary variables.
		String password = votersloginBean.getPassword();

		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String studentidDB = "";
		String passwordDB = "";
		try {
			con = DBConnection.createConnection(); // establishing connection
			statement = con.createStatement(); // Statement is used to write queries. Read more about it.
			resultSet = statement.executeQuery("select * from voter where studentid= " + studentid);

			// Here table name is users and userName,password are columns. fetching all the
			// records and storing in a resultSet.
			while (resultSet.next()) // Until next row is present otherwise it return false
			{
				studentidDB = resultSet.getString("studentid"); // fetch the values present in database
				passwordDB = resultSet.getString("password");

				System.out.println(studentidDB);
				System.out.println(passwordDB);

				if (studentid.equals(studentidDB) && password.equals(passwordDB)) {
					return "SUCCESS"; //// If the user entered values are already present in database, which means
										//// user has already registered so I will return SUCCESS message.
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "invalid user credentials.."; // Just returning appropriate message otherwise
	}
}