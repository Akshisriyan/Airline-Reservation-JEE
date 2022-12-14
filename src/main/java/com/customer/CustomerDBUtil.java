package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.admin.DBConnect;

public class CustomerDBUtil {
	private static boolean isSuccess = false;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
public static boolean validateUser(String USERNAME,String PASSWORD , String CONFIRMPASSWORD) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where (confirmpassword = '"+CONFIRMPASSWORD+"' and password = '"+PASSWORD+"') and username = '"+ USERNAME +"'";
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

///////////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////////////
public static Boolean insertcustomer(String FNAME , String LNAME , String USERNAME ,String EMAIL , String PASSWORD, String CONFIRMPASSWORD, String CONTACT, String NIC , String BIRTHDAY , String COUNTRY , String COUNTRYCODE) {

//Create Database Connection
try {
con = DBConnect.getConnection();
stmt = con.createStatement();
String  sql = "insert into user values (0 ,'"+FNAME+"','"+LNAME+"', '"+USERNAME+"' ,'"+EMAIL+"','"+PASSWORD+"','"+CONFIRMPASSWORD+"','"+CONTACT+"','"+NIC+"','"+BIRTHDAY+"','"+COUNTRY+"','"+COUNTRYCODE+"')";
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




///////////////////////////////////////////////////////////////////////////////////////////////////

	public static List<User> getUser(String USERNAME,String PASSWORD){
		
		//Creating object from ArrayList<User>
		ArrayList< User > user = new ArrayList<>();
		
		try {
			
			// Crating Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = " select * from user where username = '"+USERNAME+"' and password = '"+PASSWORD+"'";
			rs = stmt.executeQuery(sql);
			
			//Checking user information from Database 1 by 1.... 
			while (rs.next()) {
				int id =  rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String username = rs.getString(4);
				String email = rs.getString(5);
				String password = rs.getString(6);
				String confirmpassword = rs.getString(7);
				String phone = rs.getString(8);
				String nic = rs.getString(9);
				String bdate = rs.getString(10);
				String country = rs.getString(11);
				String ccode = rs.getString(12);
				
				
				
				//Sending parameters to User.java constructor..
				User usr = new User( id , fname , lname , username , email , password , confirmpassword, phone , nic , bdate , country , ccode);
				
				//pass the "usr" object to "user" object
				user.add(usr);
				
			}
			
		} 
		catch (Exception e ) {
			e.printStackTrace();
		}
		
		return user;
		}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
} 


	
	



