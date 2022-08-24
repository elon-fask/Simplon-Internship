package org.brief5.studentManagement;

public class Candidat {

	protected int id_cd;
	protected String nom;
	protected String prenom;
	protected String mail;
	protected String adresse;
	protected String ville;
	protected String pays;
	
	public int getId_cd() {
		return id_cd;
	}
	public void setId_cd(int id_cd) {
		this.id_cd = id_cd;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public String getPays() {
		return pays;
	}
	public void setPays(String pays) {
		this.pays = pays;
	}
	public Candidat () {}
	public Candidat (int id_cd) {
		this.id_cd=id_cd;
	}
	public Candidat(String nom, String prenom, String mail, String adresse, String ville, String pays) {
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.adresse = adresse;
		this.ville = ville;
		this.pays = pays;
	}
	public Candidat(int id_cd, String nom, String prenom, String mail, String adresse, String ville, String pays) {
	    this(nom,prenom,mail,adresse,ville,pays);
		this.id_cd = id_cd;
	}
	
	
	
	
}
