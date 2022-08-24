package com.simplilearn.Brief6;

public class car {
	private String Matricule;
	private String Com_Name;
	private Double Kilometrage;
	private String ManiFacture;
	private Double Price;
	private int id_Catg;
	
	public String getMatricule() {
		return Matricule;
	}
	public void setMatricule(String matricule) {
		Matricule = matricule;
	}
	public String getCom_Name() {
		return Com_Name;
	}
	public void setCom_Name(String com_Name) {
		Com_Name = com_Name;
	}

	public Double getKilometrage() {
		return Kilometrage;
	}
	public void setKilometrage(Double kilometrage) {
		Kilometrage = kilometrage;
	}
	public String getManiFacture() {
		return ManiFacture;
	}
	public void setManiFacture(String maniFacture) {
		ManiFacture = maniFacture;
	}
	public Double getPrice() {
		return Price;
	}
	public void setPrice(Double price) {
		Price = price;
	}
	public int getId_Catg() {
		return id_Catg;
	}
	public void setId_Catg(int id_Catg) {
		this.id_Catg = id_Catg;
	}
	
	@Override
	public String toString() {
		return "car [Matricule=" + Matricule + ", Com_Name=" + Com_Name + ", Kilometrage=" + Kilometrage
				+ ", ManiFacture=" + ManiFacture + ", Price=" + Price + ", id_Catg=" + id_Catg + "]";
	}
	

	
	
}
