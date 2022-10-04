package com.staff;

public class approval {
	;
	private String USERNAME;
	private String EMAIL;
	private String GRADE;
	private String PHONE;
	private String NIC;
    private String PASSWORD;
    private String CONFIRMPASSWORD;
    private String STATUS;
  
	public approval(String USERNAME, String EMAIL, String GRADE, String PHONE, String NIC, String PASSWORD,String CONFIRMPASSWORD, String STATUS) {
		
		this.USERNAME = USERNAME;
		this.EMAIL = EMAIL;
		this.PASSWORD= PASSWORD;
		this.CONFIRMPASSWORD= CONFIRMPASSWORD;
		this.PHONE = PHONE;
		this.NIC = NIC;
		this.GRADE = GRADE;
		this.STATUS=STATUS;
		
	}


	public String getUSERNAME() {
		return USERNAME;
	}

	public void setUSERNAME(String USERNAME) {
		this.USERNAME = USERNAME;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String EMAIL) {
		this.EMAIL = EMAIL;
	}

	public String getGRADE() {
		return GRADE;
	}

	public void setGRADE(String GRADE) {
		this.GRADE = GRADE;
	}

	public String getPHONE() {
		return PHONE;
	}

	public void setPHONE(String PHONE) {
		this.PHONE = PHONE;
	}

	public String getNIC() {
		return NIC;
	}

	public void setNIC(String NIC) {
		this.NIC = NIC;
	}

	public String getPASSWORD() {
		return PASSWORD;
	}

	public void setPASSWORD(String PASSWORD) {
		this.PASSWORD= PASSWORD;
	}
	public String getCONFIRMPASSWORD() {
		return CONFIRMPASSWORD;
	}

	public void setCONFIRMPASSWORD(String CONFIRMPASSWORD) {
		this.CONFIRMPASSWORD= CONFIRMPASSWORD;
	}

	public String getSTATUS() {
		return STATUS;
	}

	public void setSTATUS(String STATUS) {
		this.STATUS=STATUS;
	}
	
	
	
}