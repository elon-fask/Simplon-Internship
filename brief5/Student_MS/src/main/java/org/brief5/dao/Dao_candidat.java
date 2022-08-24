package org.brief5.dao;

import java.util.List;
import java.util.Map;

import org.brief5.studentManagement.Candidat;

public interface Dao_candidat {
	         //Query all
		public abstract List<Candidat> getAllInfo();
			//Add a new candidate
		public abstract void insert(Candidat cdt);
			//delete a candidate
		public abstract void delete(int id_cd);
			//Update candidate name based on id
		public abstract void update(int id_cd,String nom);
		   //Get an candidate by id
		public abstract Candidat getCandidatById(int id_cd);
}
