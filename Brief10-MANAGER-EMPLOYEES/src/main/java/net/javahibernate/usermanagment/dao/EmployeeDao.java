package net.javahibernate.usermanagment.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import net.javahibernate.usermanagment.model.Employee;
import net.javahibernate.usermanagment.util.HibernateUtil;

public class EmployeeDao {
	

	    /**
	     * Save Employee
	     * @param employee
	     */
	    public void saveEmployee(Employee employee) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the employee object
	            session.save(employee);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }

	    /**
	     * Update Employee
	     * @param employee
	     */
	    public void updateEmployee(Employee employee) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the employee object
	            session.update(employee);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }

	    /**
	     * Delete Employee
	     * @param id
	     */
	    public void deleteEmployee(int id) {

	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();

	            // Delete a user object
	            Employee employee = session.get(Employee.class, id);
	            if (employee != null) {
	                session.delete(employee);
	                System.out.println("Employee is deleted");
	            }

	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }

	    /**
	     * Get Employee By ID
	     * @param id
	     * @return
	     */
	    public Employee getEmployee(int id) {

	        Transaction transaction = null;
	         Employee employee = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // get an user object
	            employee = session.get(Employee.class, id);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return employee;
	    }

	    /**
	     * Get all Users
	     * @return
	     */
	    @SuppressWarnings("unchecked")
	    public List < Employee > getAllEmployee() {

	        Transaction transaction = null;
	        List < Employee > listOfEmployee= null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // get an employee object

	            listOfEmployee = session.createQuery("from Employee").getResultList();
                System.out.println(listOfEmployee);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return listOfEmployee;
	    }
	}

