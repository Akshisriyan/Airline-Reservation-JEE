package com.staff1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class StaffDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static Boolean insertStaff( String LNAME , String EMAIL , String CONTACT, String NIC , String PASSWORD , String GRADE, String CONFIRMPASSWORD) {
		
		boolean isSuccess = false;
		
		//Create Database Connection
		try {
			con = DBConnect.getConnection();
		    stmt = con.createStatement();
			String  sql = "insert into staff1 values (0 ,'"+LNAME+"','"+EMAIL+"','"+PASSWORD+"','"+CONTACT+"','"+NIC+"','"+GRADE+"','"+CONFIRMPASSWORD+"')";
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

}




