package de.unidue.inf.is.domain;

public class Benutzer {

	private String email;
	private String name;
	private String beschreibung;
	
	
	Benutzer(){}
	Benutzer(String emaill,String namee,String beschreibungg){
		
		setEmail(emaill);
		setName(namee);
		setBeschreibung(beschreibungg);
		
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBeschreibung() {
		return beschreibung;
	}
	public void setBeschreibung(String beschreibung) {
		this.beschreibung = beschreibung;
	}
	
}
