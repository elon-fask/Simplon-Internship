package net.javahibernate.usermanagment.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.hibernate.Session;
import org.hibernate.Transaction;

import net.javahibernate.usermanagment.model.Admin;
import net.javahibernate.usermanagment.util.HibernateUtil;

public class AdminDao {
	 public void saveAdmin(Admin admin) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the student object
	            session.save(admin);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }

	    public boolean validate(String username, String password) {

	        Transaction transaction = null;
	        Admin admin = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // get an Admin object
	            admin = (Admin) session.createQuery("FROM admin U WHERE U.username = :username").setParameter("username", username)
	                .uniqueResult();

	            if (admin != null && admin.getPassword().equals(password)) {
	                return true;
	            }
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return false;
	    }
	

}
