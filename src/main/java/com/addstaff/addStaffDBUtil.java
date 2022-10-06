package com.addstaff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.admin.DBConnect;

public class addStaffDBUtil {
	
	private static boolean isSuccess = false;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static Boolean insertaddstaff( String LNAME , String EMAIL ,String PASSWORD , String CONFIRMPASSWORD, String CONTACT, String NIC ,String GRADE, String STATUS ) {
		
		
		//Create Database Connection
		try {
			con = DBConnect.getConnection();
		    stmt = con.createStatement();
			String  sql = "insert into grade1 values (0 ,'"+LNAME+"','"+EMAIL+"','"+PASSWORD+"','"+CONFIRMPASSWORD+"','"+CONTACT+"','"+NIC+"','"+GRADE+"','"+STATUS+"' )";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}



