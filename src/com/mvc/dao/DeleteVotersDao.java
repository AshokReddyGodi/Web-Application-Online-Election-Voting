package com.mvc.dao;

import java.sql.Connection;
import java.sql.Statement;

import com.mvc.bean.DeleteVotersBean;
import com.mvc.util.DBConnection;

public class DeleteVotersDao {
	public String studentname(DeleteVotersBean voterBean) {
		// Keeping user entered values in temporary variables.
		String studentname = voterBean.getStudentName();
		Connection con = null;

		try {
			con = DBConnection.createConnection();

			Statement st = con.createStatement();
			String sql = "delete from voter where studentid= '" + studentname + "'";
			int iCountDel = st.executeUpdate(sql);

			if (iCountDel != 0) {
				return "SUCCESS";
			} else {
				return "UNSUCCESS";
			}

		} catch (Exception e) {
		}
		return "UNSUCCESS";

	}

}
