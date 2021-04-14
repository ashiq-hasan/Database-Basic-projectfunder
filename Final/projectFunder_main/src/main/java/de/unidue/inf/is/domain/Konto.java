package de.unidue.inf.is.domain;

public class Konto {
private String inhaber;
private double guthaben;
private String geheimzhal;
Konto(){}
Konto(String inhaber,double guthaben,String geheimzhal){
	this.inhaber=inhaber;
    this.guthaben=guthaben;
    this.geheimzhal=geheimzhal;
}
public String getInhaber() {
	return inhaber;
}
public void setInhaber(String inhaber) {
	this.inhaber = inhaber;
}
public double getGuthaben() {
	return guthaben;
}
public void setGuthaben(double guthaben) {
	this.guthaben = guthaben;
}
public String getGeheimzhal() {
	return geheimzhal;
}
public void setGeheimzhal(String geheimzhal) {
	this.geheimzhal = geheimzhal;
}

}
