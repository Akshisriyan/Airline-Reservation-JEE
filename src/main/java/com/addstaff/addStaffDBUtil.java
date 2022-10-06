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


public static boolean validateGrade1(String USERNAME,String PASSWORD,String GRADE , String CONFIRMPASSWORD) {
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from grade1 where (username = '"+USERNAME+"' and password='"+PASSWORD+"') and (grade = '"+GRADE+"' and confirmpass = '"+ CONFIRMPASSWORD +"')";
				
		rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			
			if(rs.getString(9).equals("false"))
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}	
			}	
 else {
			
			isSuccess = false;
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}

}




