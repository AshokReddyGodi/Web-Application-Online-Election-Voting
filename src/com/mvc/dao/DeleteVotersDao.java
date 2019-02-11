package com.mvc.dao;

import java.sql.Connection;
import java.sql.Statement;

import com.mvc.bean.DeleteVotersBean;
import com.mvc.util.DBConnection;

public class DeleteVotersDao {
	public String studentname(DeleteVotersBean voterBean)
	{
		String studentname=voterBean.getStudentName();
		Connection con = null;
		System.out.println("getting values");
		try {
			con = DBConnection.createConnection();
			//System.out.println("before111");
			//String qry="delete from author_details where author_id='?'";
			//System.out.println("after2222");
			
			//PreparedStatement st = conn.prepareStatement(qry);
			System.out.println(studentname+"--**");
			//st.setString(1, authorname);
			//st.executeUpdate();
			Statement st = con.createStatement();
		    String sql = "delete from voter where studentid= '"+studentname+"'";
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
