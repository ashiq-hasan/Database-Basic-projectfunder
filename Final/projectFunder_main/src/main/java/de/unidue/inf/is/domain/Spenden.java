package de.unidue.inf.is.domain;

public class Spenden {

	private String spender;
	private int project;
	private double spendenbetrag;
	private String sichtbarkeit;
	
	Spenden(){}
	Spenden(String spender,int project,double spendenbetrag,String sichtbarkeit){
		this.setSpender(spender);
		this.setProject(project);
		this.setSichtbarkeit(sichtbarkeit);
		this.setSpendenbetrag(spendenbetrag);
	}
	public String getSpender() {
		return spender;
	}
	public void setSpender(String spender) {
		this.spender = spender;
	}
	public int getProject() {
		return project;
	}
	public void setProject(int project) {
		this.project = project;
	}
	public double getSpendenbetrag() {
		return spendenbetrag;
	}
	public void setSpendenbetrag(double spendenbetrag) {
		this.spendenbetrag = spendenbetrag;
	}
	public String getSichtbarkeit() {
		return sichtbarkeit;
	}
	public void setSichtbarkeit(String sichtbarkeit) {
		this.sichtbarkeit = sichtbarkeit;
	}
}
