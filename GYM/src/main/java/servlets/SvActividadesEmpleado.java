package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DbEmpleado;
import entities.Empleado;


@WebServlet("/SvActividadesEmpleado")
public class SvActividadesEmpleado extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	DbEmpleado dbemp = new DbEmpleado();
    	ArrayList<Empleado> empleados = new ArrayList<>();
    	empleados.addAll(dbemp.getEmpleados());
    	/* request.getSession().setAttribute("empleados", empleados);
    	response.sendRedirect("/GYM/pages/nuevaClase.jsp"); PREGUNTAR POR QUE NO PUEDO HACERLO ASI*/ 
    
    	request.setAttribute("empleados", empleados);
    	request.getRequestDispatcher("/pages/nuevaClase.jsp").forward(request,response);
    	
	}


}
