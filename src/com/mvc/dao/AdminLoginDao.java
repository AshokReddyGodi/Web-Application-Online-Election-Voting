package com.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mvc.bean.AdminLoginBean;
import com.mvc.util.DBConnection;

public class AdminLoginDao {
	public String authenticateUser(AdminLoginBean adminloginBean) {

		// Keeping user entered values in temporary variables.
		String userName = adminloginBean.getUserName();
		String password = adminloginBean.getPassword();

		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String userNameDB = "";
		String passwordDB = "";

		try {
			// establishing connection
			con = DBConnection.createConnection();
			// Statement is used to write queries.
			statement = con.createStatement();

			resultSet = statement.executeQuery("select * from admin where username= '" + userName + "'");
			// Here table name is users and userName,password are columns.fetching all the
			// records and in a resultSet. Until next row is present otherwise it return
			// false
			while (resultSet.next()) {
				// fetch the values present in database
				userNameDB = resultSet.getString("username");
				passwordDB = resultSet.getString("password");

				//// If the user entered values are already present in database, which means
				//// user has already registered so I will return SUCCESS message.
				if (userName.equals(userNameDB) && password.equals(passwordDB)) {
					return "SUCCESS";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// Just returning appropriate message otherwise
		return "Invalid user credentials....";
	}
}
