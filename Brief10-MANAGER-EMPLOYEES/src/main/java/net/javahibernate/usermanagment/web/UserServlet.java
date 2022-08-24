package net.javahibernate.usermanagment.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import net.javahibernate.usermanagment.dao.EmployeeDao;
import net.javahibernate.usermanagment.model.Employee;


@WebServlet("/")
public class UserServlet extends HttpServlet {
	
    private static final long serialVersionUID = 1L;
    private EmployeeDao employeeDao;

    public void init() {
        employeeDao = new EmployeeDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();
        PrintWriter out = response.getWriter();
    
        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertEmployee(request, response);
                    break;
                case "/delete":
                    deleteEmployee(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                	System.out.print(123344);
                    updateEmployee(request, response);
                    break;
                default:
                	System.out.print(123344);
                    listEmployee(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
        
    }

    private void listEmployee(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < Employee > listEmployee = employeeDao.getAllEmployee();
        System.out.println(listEmployee);
        request.setAttribute("listEmployee", listEmployee);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Employees-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id_employees"));
        Employee existingEmployee = employeeDao.getEmployee(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Employees-form.jsp");
        request.setAttribute("employee", existingEmployee);
        dispatcher.forward(request, response);

    }

    private void insertEmployee(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
    	String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String adress = request.getParameter("adress");
        String contact = request.getParameter("contact");
        Employee newEmployee = new Employee(firstname,lastname,email,adress,contact);
        employeeDao.saveEmployee(newEmployee);
        response.sendRedirect("list");
    }

    private void updateEmployee(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id_employees"));
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String adress = request.getParameter("adress");
        String contact = request.getParameter("contact");

        Employee employee = new Employee(id,firstname,lastname,email,adress,contact);
        employeeDao.updateEmployee(employee);
        response.sendRedirect("list");
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id_employees"));
        employeeDao.deleteEmployee(id);
        response.sendRedirect("list");
    }
}


