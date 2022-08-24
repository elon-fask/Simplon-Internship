package org.brief5.impl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.brief5.dao.Dao_candidat;
import org.brief5.DB.DB_candidat;
import org.brief5.studentManagement.Candidat;

public class Impl_dao implements Dao_candidat{

	@Override
	public List<Candidat> getAllInfo() {
		List<Candidat> candList= new ArrayList<>();
		DB_candidat obj_cnx= new DB_candidat();		
		Connection cn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			cn =obj_cnx.get_cnx();
			// Create Statement
			st = cn.createStatement();
			String sql = "select * from Candidat";
			rs = st.executeQuery(sql);
			// Traversal result set
			while (rs.next()) {
				int id = rs.getInt("id_cd");//id
				String nom = rs.getString("nom");
				String prenom = rs.getString("prenom");
				String mail = rs.getString("mail");
				String adresse = rs.getString("adresse");
				String ville = rs.getString("ville");
				String pays = rs.getString("pays");
				
				Candidat cand = new Candidat ();
				cand.setId_cd(id);
				cand.setNom(nom);
				cand.setPrenom(prenom);
				cand.setMail(mail);
				cand.setAdresse(adresse);
				cand.setVille(ville);
				cand.setPays(pays);
				
				candList.add(cand);
				//System.out.println("id: " + id + "\nnom: " + nom + "\nprenom: " + prenom+ "\nmail: "+mail+ "\nadresse: "+adresse+"\nville: "+ville+"\npays: "+pays );
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		} 
		return candList;
	}

	@Override
	public void insert(Candidat cdt) {
		Connection cn=null;
		DB_candidat obj_cnx =new DB_candidat();
        cn =obj_cnx.get_cnx();

        try {
        	 String query = "Insert into candidat"+ "(nom, prenom, mail, adresse, ville,pays) values"+" (?, ?, ?, ?,?,?);"; 
        	 PreparedStatement preparedStmt = cn.prepareStatement(query);
        	 
     		
        	  preparedStmt.setString (1, cdt.getNom());
        	  preparedStmt.setString (2, cdt.getPrenom());
        	  preparedStmt.setString (3, cdt.getMail());
        	  preparedStmt.setString (4, cdt.getAdresse());
        	  preparedStmt.setString (5, cdt.getVille());
        	  preparedStmt.setString (6, cdt.getPays());
        	 
        	  System.out.println(preparedStmt);
        	  preparedStmt.executeUpdate();
        	  //cn.close();
        	
        System.out.println ("Value inserted successfully");
        
        } catch (Exception e) {
        e.printStackTrace ();
        }
	}

	@Override
	public void delete(int id_cd) {
		Connection cn = null;
		DB_candidat obj_cnx = new DB_candidat();
		cn = obj_cnx.get_cnx();

		try {
			String query = "delete from candidat where id_cd=?;";
			PreparedStatement preparedStmt = cn.prepareStatement(query);

					
			preparedStmt.setInt(1, id_cd);
			preparedStmt.executeUpdate();
			// cn.close();
			int result = preparedStmt.executeUpdate();
            System.out.println("Number of records affected: " + result);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(int id_cd, String nom) {
		Connection cn = null;
		DB_candidat obj_cnx = new DB_candidat();
		cn = obj_cnx.get_cnx();

		try {
			String query = "Update candidat set nom =? where id_cd=?;";
			PreparedStatement preparedStmt = cn.prepareStatement(query);
     		
			preparedStmt.setInt(1, id_cd);
			preparedStmt.setString(2, nom);
			preparedStmt.executeUpdate();
			// cn.close();

			System.out.println("The update is done");

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Candidat getCandidatById(int id_cd) {
		Candidat cnd = null;
		String SQL = "SELECT *FROM candidat WHERE id_cd=?";
		Connection cn = null;
		DB_candidat obj_cnx = new DB_candidat();
		cn = obj_cnx.get_cnx();
		try(PreparedStatement ps = cn.prepareStatement(SQL)) {
			
			ps.setInt(1, id_cd);
			
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				int id_cad = rs.getInt("id_cd");
				String Nom = rs.getString("nom");
				String Prenom = rs.getString("prenom");
				String Mail = rs.getString("mail");
				String Adresse = rs.getString("adresse");
				String Ville = rs.getString("ville");
				String Pays =rs.getString("pays");
				
				cnd = new Candidat();
				cnd.setId_cd(id_cad);
				cnd.setNom(Nom);
				cnd.setPrenom(Prenom);
				cnd.setMail(Mail);
				cnd.setAdresse(Adresse);
				cnd.setVille(Ville);
				cnd.setPays(Pays);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return cnd;
	}

}
