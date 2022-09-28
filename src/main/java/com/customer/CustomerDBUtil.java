package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class CustomerDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static Boolean insertcustomer(String FNAME , String LNAME , String EMAIL , String CONTACT, String NIC , String BIRTHDAY , String COUNTRY , String COUNTRYCODE , String PASSWORD ) {
		
		boolean isSuccess = false;
		
		//Create Database Connection
		try {
			con = DBConnect.getConnection();
		stmt = con.createStatement();
			String  sql = "insert into user values (0 ,'"+FNAME+"','"+LNAME+"','"+EMAIL+"','"+PASSWORD+"','"+CONTACT+"','"+NIC+"','"+BIRTHDAY+"','"+COUNTRY+"','"+COUNTRYCODE+"')";
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




