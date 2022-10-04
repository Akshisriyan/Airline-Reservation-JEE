package com.staff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.admin.DBConnect;

public class StaffDBUtil {
	
	private static boolean isSuccess = false;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static Boolean insertgrade1( String LNAME , String EMAIL , String CONTACT, String NIC , String PASSWORD , String GRADE, String CONFIRMPASSWORD, String STATUS ) {
		
		
		//Create Database Connection
		try {
			con = DBConnect.getConnection();
		    stmt = con.createStatement();
			String  sql = "insert into grade1 values (0 ,'"+LNAME+"','"+EMAIL+"','"+PASSWORD+"','"+CONTACT+"','"+NIC+"','"+GRADE+"','"+CONFIRMPASSWORD+"', '"+STATUS+"' )";
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
	
	
//////////////////////////////////////////////////////////////////////////////////////////////////////	
public static List< Grade1 > getGrade1(String USERNAME){
		
		//Creating object from ArrayList<User>
		ArrayList< Grade1 > grade1 = new ArrayList<>();
		
		try {
			
			// Crating Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = " select * from grade1 where username = '"+USERNAME+"'";
			rs = stmt.executeQuery(sql);
			
			//Checking user information from Database 1 by 1.... 
			while (rs.next()) {
				int sid =  rs.getInt(1);
				String username = rs.getString(2);
				String email = rs.getString(3);
				String password = rs.getString(4);
				String phone = rs.getString(5);
				String nic = rs.getString(6);
				String grade = rs.getString(7);
				String status = rs.getString(9);
				
				
				
				//Sending parameters to User.java constructor..
				Grade1 g1 = new Grade1( sid , username , email , password, phone , nic , grade, status );
				
				//pass the "usr" object to "user" object
				grade1.add(g1);
				
			}
			
		} catch (Exception e ) {
			
		}
		
		return grade1;
		}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public static boolean validateGrade1(String USERNAME,String PASSWORD,String GRADE ) {
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from grade1 where (username = '"+USERNAME+"' and password='"+PASSWORD+"') and grade = '"+GRADE+"' ";
				
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

}




