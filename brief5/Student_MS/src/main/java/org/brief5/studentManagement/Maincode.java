package org.brief5.studentManagement;

import java.sql.*;
import java.util.List;
import java.util.Scanner;

import org.brief5.dao.Dao_candidat;
import org.brief5.impl.dao.Impl_dao;

public class Maincode {

	public static void main(String[] args) {
		System.out.println("___________Menu___________");
		System.out.println("Choose your operation");
		System.out.println("1: Show all the candidates");
		System.out.println("2: Insert new candidate");
		System.out.println("3: Update a candidate");
		System.out.println("4: Delete a candidate");
		System.out.println("5: Search for a candidate");

		Dao_candidat cnd_dao = new Impl_dao();
		

		Scanner sc = new Scanner(System.in);
		int c = sc.nextInt();
		
		switch (c) {
		case 1: {

			getAllInfo(cnd_dao);
			break;
		}
		case 2: {
			Candidat cd = getCandidat();
			cnd_dao.insert(cd);
			break;
		}
		case 3: {
			System.out.println("Enter the id of the candidat");
			int id = sc.nextInt();
			System.out.println("Enter the new family name");
			String nm = sc.nextLine();
			cnd_dao.update(id, nm);
			break;
		}
		case 4: {
			System.out.println("Enter the id of the candidat");
			int id = sc.nextInt();
			cnd_dao.delete(id);
			break;
		}
		case 5: {
			System.out.println("Enter the id of the candidat");
			int id = sc.nextInt();
			getCandidatById(cnd_dao,id);
			break;
		}
		}

	}

	private static void getAllInfo(Dao_candidat cnd_dao) {
		List<Candidat> candList = cnd_dao.getAllInfo();
		for (Candidat cnd : candList) {
			System.out.println(cnd);
		}

	}

	private static void getCandidatById(Dao_candidat cnd_dao,int id) {
		Candidat cnd2 = cnd_dao.getCandidatById(id);
		if (cnd2 != null) {
			System.out.println(cnd2);
		} else {
			System.out.println("Candidate not existing");
		}
	}

	private static Candidat getCandidat() {
		Candidat cnd = new Candidat();
		Scanner sc2 = new Scanner(System.in);
		
		System.out.println("Enter the family name");
		String nm = sc2.nextLine();
		System.out.println("Enter the first name");
		String pnm = sc2.nextLine();
		System.out.println("Enter the mail");
		String ml = sc2.nextLine();
		System.out.println("Enter the adress");
		String adr = sc2.nextLine();
		System.out.println("Enter the city");
		String cy = sc2.nextLine();
		System.out.println("Enter the country");
		String ctr = sc2.nextLine();
		
		cnd.setNom(nm);
		cnd.setPrenom(pnm);
		cnd.setMail(ml);
		cnd.setAdresse(adr);
		cnd.setVille(cy);
		cnd.setPays(ctr);
		return cnd;
	}
}
