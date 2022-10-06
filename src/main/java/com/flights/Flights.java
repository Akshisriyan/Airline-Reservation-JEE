package com.flights;

public class Flights {
	private int FLIGHTID;
	private String FROM;
	private String DESTINATION;
	private String PLANETYPE;
	private String AVAILABLESEATS;
	private String DATE;
	private String TIME;
	
	public Flights(int fLIGHTID, String fROM, String dESTINATION, String pLANETYPE, String aVAILABLESEATS, String dATE,String tIME) 
	{
		super();
		FLIGHTID = fLIGHTID;
		FROM = fROM;
		DESTINATION = dESTINATION;
		PLANETYPE = pLANETYPE;
		AVAILABLESEATS = aVAILABLESEATS;
		DATE = dATE;
		TIME = tIME;
	}

	public int getFLIGHTID() {
		return FLIGHTID;
	}

	public String getFROM() {
		return FROM;
	}

	public String getDESTINATION() {
		return DESTINATION;
	}

	public String getPLANETYPE() {
		return PLANETYPE;
	}

	public String getAVAILABLESEATS() {
		return AVAILABLESEATS;
	}

	public String getDATE() {
		return DATE;
	}

	public String getTIME() {
		return TIME;
	}
}
