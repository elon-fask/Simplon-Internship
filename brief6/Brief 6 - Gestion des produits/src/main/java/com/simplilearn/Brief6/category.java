package com.simplilearn.Brief6;

public class category {
	private int id_Catg;
	private String Nom_Catg;
	
	
	public int getId_Catg() {
		return id_Catg;
	}
	public void setId_Catg(int id_Catg) {
		this.id_Catg = id_Catg;
	}
	public String getNom_Catg() {
		return Nom_Catg;
	}
	public void setNom_Catg(String nom_Catg) {
		Nom_Catg = nom_Catg;
	}
	
	@Override
	public String toString() {
		return "category [id_Catg=" + id_Catg + ", Nom_Catg=" + Nom_Catg + "]";
	}
	

}
