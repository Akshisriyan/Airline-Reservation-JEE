package com.customer;

public class Staff {
	private int SID;
	private String USERNAME;
	private String EMAIL;
	private String PASSWORD;
	private String PHONE;
	private String NIC;
    private boolean GRADE;
    private String CONFIRMPASSWORD;
	public Staff(int sID, String uSERNAME, String eMAIL, String pASSWORD, String phone, String nIC, boolean gRADE) {
		super();
		SID = sID;
		USERNAME = uSERNAME;
		EMAIL = eMAIL;
		PASSWORD = pASSWORD;
		PHONE = phone;
		NIC = nIC;
		GRADE = gRADE;
		
	}
	public int getUID() {
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
	public String getPhone() {
		return PHONE;
	}
	public String getNIC() {
		return NIC;
	}
	public boolean isGRADE() {
		return GRADE;
	}
	public void setCONFIRMPASSWORD(int cONFIRMPASSWORD ) {
		SID = cONFIRMPASSWORD;
	}

    

}
