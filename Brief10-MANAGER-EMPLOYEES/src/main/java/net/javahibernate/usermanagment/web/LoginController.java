package net.javahibernate.usermanagment.web;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import net.javahibernate.usermanagment.dao.AdminDao;

import java.io.IOException;


@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	private AdminDao loginDao;

    public void init() {
        loginDao = new AdminDao();
    }
    public LoginController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.sendRedirect("Login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
	            authenticate(request, response);
	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }}
		 private void authenticate(HttpServletRequest request, HttpServletResponse response)
				    throws Exception {
				        String username = request.getParameter("username");
				        String password = request.getParameter("password");

				        if (loginDao.validate(username, password)) {
				        	response.sendRedirect("index.jsp");
				            
				        } else {
				            throw new Exception("Login not successful..");
				        }
				    }

}
