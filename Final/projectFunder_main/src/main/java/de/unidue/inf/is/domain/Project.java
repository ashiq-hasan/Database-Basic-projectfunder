package de.unidue.inf.is.domain;

public class Project {

	private int kennung;
	private String titel;
	private String beschreibung;
	private String status;
	private double finanzierungslimit;
	private String ersteller;
	private int vorgaenger;
	private int kategorie;
	private String name;
	
	public Project(){}
	public Project(int kennung ,String titel, String beschreibung ,String status, double finanzierungslimit,String ersteller,int vorgaenger,int kategorie,String name )
	{
		this.setKennung(kennung);
		this.setTitel(titel);
		this.setBeschreibung(beschreibung);
		this.setStatus(status);
		this.setFinanzierungslimit(finanzierungslimit);
		this.setErsteller(ersteller);
		this.setVorgaenger(vorgaenger);
		this.setKategorie(kategorie);
		this.name=name;
	}
	public int getKennung() {
		return kennung;
	}
	public void setKennung(int kennung) {
		this.kennung = kennung;
	}
	public String getTitel() {
		return titel;
	}
	public void setTitel(String titel) {
		this.titel = titel;
	}
	public String getBeschreibung() {
		return beschreibung;
	}
	public void setBeschreibung(String beschreibung) {
		this.beschreibung = beschreibung;
	}
	public String getErsteller() {
		return ersteller;
	}
	public void setErsteller(String ersteller) {
		this.ersteller = ersteller;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getFinanzierungslimit() {
		return finanzierungslimit;
	}
	public void setFinanzierungslimit(double finanzierungslimit) {
		this.finanzierungslimit = finanzierungslimit;
	}
	public int getVorgaenger() {
		return vorgaenger;
	}
	public void setVorgaenger(int vorgaenger) {
		this.vorgaenger = vorgaenger;
	}
	public int getKategorie() {
		return kategorie;
	}
	public void setKategorie(int kategorie) {
		this.kategorie = kategorie;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
