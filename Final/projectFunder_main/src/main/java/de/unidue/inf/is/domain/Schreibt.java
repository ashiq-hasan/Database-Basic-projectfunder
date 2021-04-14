package de.unidue.inf.is.domain;

public class Schreibt {

	private String benutzer;
	private int project;
	private int kommentar;
	
	
	Schreibt(){}
	
	Schreibt(String benutzer,int project,int kommentar){
		this.setBenutzer(benutzer);
		this.setKommentar(kommentar);
		this.setProject(project);
	}

	public String getBenutzer() {
		return benutzer;
	}

	public void setBenutzer(String benutzer) {
		this.benutzer = benutzer;
	}

	public int getKommentar() {
		return kommentar;
	}

	public void setKommentar(int kommentar) {
		this.kommentar = kommentar;
	}

	public int getProject() {
		return project;
	}

	public void setProject(int project) {
		this.project = project;
	}
	
	
	
	
}
