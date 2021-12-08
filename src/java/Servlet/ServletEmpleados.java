/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import Logica.Empleado;
import java.io.IOException;
import java.io.PrintWriter;
import static java.util.Objects.isNull;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author villa
 */
@WebServlet(name = "ServletEmpleados", urlPatterns = {"/ServletEmpleados"})
public class ServletEmpleados extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int id= Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String cargo = request.getParameter("cargo");
        double sueldo = Double.parseDouble(request.getParameter("sueldo"));
       
        
        Controladora control = new Controladora();
        Empleado empleado = control.buscarEmpleados(id);
        empleado.setApellido(apellido);
        empleado.setNombre(nombre);
        empleado.setEmail(email);
        empleado.setCargo(cargo);
        empleado.setSueldo(sueldo);
        
        
        
        request.getSession().setAttribute("listaEmpleados", control.traerEmpleados());
        response.sendRedirect("listadoEmpleados.jsp");
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
