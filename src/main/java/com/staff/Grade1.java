package com.staff;

public class Grade1 {
	private int SID;
	private String USERNAME;
	private String EMAIL;
	private String PASSWORD;
	private String CONFIRMPASSWORD;
	private String PHONE;
	private String NIC;
    private String GRADE;
    private String STATUS;
  
	public Grade1(int sID, String uSERNAME, String eMAIL, String pASSWORD,String cONFIRMPASSWORD, String phone, String nIC, String gRADE, String sTATUS) {
		super();
		SID = sID;
		USERNAME = uSERNAME;
		EMAIL = eMAIL;
		PASSWORD= pASSWORD;
		CONFIRMPASSWORD=cONFIRMPASSWORD;
		PHONE = phone;
		NIC = nIC;
		GRADE = gRADE;
		STATUS=sTATUS;
		
	}

	public int getSID() {
		return SID;
	}

	public String getUSERNAME() {
		return USERNAME;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public String getPASSWORD() {
		return PASSWORD;
	}

	public String getCONFIRMPASSWORD() {
		return CONFIRMPASSWORD;
	}

	public String getPHONE() {
		return PHONE;
	}

	public String getNIC() {
		return NIC;
	}

	public String getGRADE() {
		return GRADE;
	}

	public String getSTATUS() {
		return STATUS;
	}


	
}