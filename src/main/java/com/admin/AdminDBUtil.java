package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.User;

public class AdminDBUtil {
	
	private static boolean isSuccess = false;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
public static boolean validateAdmin(String USERNAME,String PASSWORD) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where adminname = '"+USERNAME+"' and adminpass = '"+PASSWORD+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			} else {
				
				isSuccess = false;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

/////////////////////////////////////////////////////////////////////////////////

public static List<Admin> getAdmin(String USERNAME){
	
	//Creating object from ArrayList<User>
	ArrayList< Admin > admin = new ArrayList<>();
	
	try {
		
		// Crating Database Connection
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = " select * from admin where adminname = '"+USERNAME+"'";
		rs = stmt.executeQuery(sql);
		
		//Checking user information from Database 1 by 1.... 
		while (rs.next()) {
			int aid =  rs.getInt(1);
			String username = rs.getString(2);
			String password = rs.getString(3);
			
			
			//Sending parameters to Admin.java constructor..
			Admin adm = new Admin( aid , username , password );
			
			//pass the "usr" object to "user" object
			admin.add(adm);
			
		}
		
	} catch (Exception e ) {
		
	}
	
	return admin;
	}


}
