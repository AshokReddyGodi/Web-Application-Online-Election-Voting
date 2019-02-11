package com.mvc.dao;

import java.sql.Connection;
import java.sql.Statement;

import com.mvc.bean.DeleteNomineesBean;
import com.mvc.util.DBConnection;

public class DeleteNomineesDao {
	public String nomineename(DeleteNomineesBean nomineeBean)
	{
		String nomineename=nomineeBean.getNomineeName();
		Connection con = null;
		System.out.println("getting values");
		try {
			con = DBConnection.createConnection();
			//System.out.println("before111");
			//String qry="delete from author_details where author_id='?'";
			//System.out.println("after2222");
			
			//PreparedStatement st = conn.prepareStatement(qry);
			System.out.println(nomineename+"--**");
			//st.setString(1, authorname);
			//st.executeUpdate();
			Statement st = con.createStatement();
		    String sql = "delete from nominees where nomineeid= '"+nomineename+"'";
		    int iCountDel = st.executeUpdate(sql);
		    
		    if (iCountDel != 0) {
		    	return "SUCCESS";
		    } else {
		    	return "UNSUCCESS";
		    }
			
		
		}
		catch(Exception e){}
		return "UNSUCCESS";
		
}



}
