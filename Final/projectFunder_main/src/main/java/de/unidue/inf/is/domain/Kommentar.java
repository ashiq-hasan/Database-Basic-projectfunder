package de.unidue.inf.is.domain;

import java.sql.Timestamp;

public class Kommentar {

	private int id;
	private String text;
	private Timestamp datum;
	
	Kommentar(){}
	Kommentar(int id,String text,Timestamp datum)
	{
		this.setDatum(datum);
		this.setId(id);
		this.setText(text);
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Timestamp getDatum() {
		return datum;
	}
	public void setDatum(Timestamp datum) {
		this.datum = datum;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
}
