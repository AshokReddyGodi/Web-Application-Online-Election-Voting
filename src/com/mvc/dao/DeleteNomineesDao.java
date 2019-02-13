package com.mvc.dao;

import java.sql.Connection;
import java.sql.Statement;

import com.mvc.bean.DeleteNomineesBean;
import com.mvc.util.DBConnection;

public class DeleteNomineesDao {
	public String nomineename(DeleteNomineesBean nomineeBean) {
		// Keeping user entered values in temporary variables.
		String nomineename = nomineeBean.getNomineeName();
		Connection con = null;

		try {
			con = DBConnection.createConnection();

			Statement st = con.createStatement();
			String sql = "delete from nominees where nomineeid= '" + nomineename + "'";
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
