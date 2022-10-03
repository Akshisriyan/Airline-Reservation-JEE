package com.staff;

public class approval {
	private String SID;
	private String USERNAME;
	private String EMAIL;
	private String GRADE;
	private String PHONE;
	private String NIC;
    private String PASSWORD;
    private String STATUS;
  
	public approval(String sID, String uSERNAME, String eMAIL, String gRADE, String phone, String nIC, String pASSWORD, String sTATUS) {
		super();
		SID = sID;
		USERNAME = uSERNAME;
		EMAIL = eMAIL;
		PASSWORD= pASSWORD;
		PHONE = phone;
		NIC = nIC;
		GRADE = gRADE;
		STATUS=sTATUS;
		
	}

	public String getSID() {
		return SID;
	}

	public String getUSERNAME() {
		return USERNAME;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public String getGRADE() {
		return GRADE;
	}

	public String getPHONE() {
		return PHONE;
	}

	public String getNIC() {
		return NIC;
	}

	public String getPASSWORD() {
		return PASSWORD;
	}

	public String getSTATUS() {
		return STATUS;
	}

	public void setSID(String sID) {
		SID = sID;
	}

	public void setUSERNAME(String uSERNAME) {
		USERNAME = uSERNAME;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	public void setGRADE(String gRADE) {
		GRADE = gRADE;
	}

	public void setPHONE(String pHONE) {
		PHONE = pHONE;
	}

	public void setNIC(String nIC) {
		NIC = nIC;
	}

	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}

	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}

}