package com.flights2;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.admin.DBConnect;

public class FlightDBUtil2 {
	
	private static boolean isSuccess = false;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static Boolean insertflights( Integer FLIGHTID , String FROM , String DESTINATION, String PLANETYPE, String AVAILABLESEATS ,String DATE, String TIME ) {
		
		
		//Create Database Connection
		try {
			con = DBConnect.getConnection();
		    stmt = con.createStatement();
			String  sql = "insert into flight values ('"+FLIGHTID+"','"+FROM+"','"+DESTINATION+"','"+PLANETYPE+"','"+AVAILABLESEATS+"','"+DATE+"','"+TIME+"')";
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




