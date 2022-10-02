package com.admin;

public class Admin {

	private int AID;
	private String USERNAME;
	private String PASSWORD;
	
	public Admin(int aID, String uSERNAME, String pASSWORD) {
		super();
		AID = aID;
		USERNAME = uSERNAME;
		PASSWORD = pASSWORD;
	}
	public int getUID() {
		return AID;
	}
	public String getUSERNAME() {
		return USERNAME;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	
	
}
