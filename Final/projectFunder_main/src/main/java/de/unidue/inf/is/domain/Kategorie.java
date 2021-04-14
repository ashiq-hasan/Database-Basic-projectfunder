package de.unidue.inf.is.domain;

public class Kategorie {

	
	private int id;
	private String name;
	private String icon;
	
	Kategorie(){}
	
	Kategorie(int id,String name,String icon){
		this.setIcon(icon);
		this.setId(id);
		this.setName(name);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}
}
