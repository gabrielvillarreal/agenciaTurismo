/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import Logica.Empleado;
import Logica.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author villa
 */
@WebServlet(name = "SvModificarEmpleado", urlPatterns = {"/SvModificarEmpleado"})
public class SvModificarEmpleado extends HttpServlet {

   Controladora control = new Controladora();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int id= Integer.parseInt(request.getParameter("id"));
        //traigo los datos del JSP
        
         String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String direccion = request.getParameter("direccion");
        String dni = request.getParameter("dni");
        String fechaNac = request.getParameter("fecha");
        String nacionalidad = request.getParameter("nacionalidad");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        String sueldo = request.getParameter("sueldo");
        String cargo = request.getParameter("cargo");
        String nombreUsuario = request.getParameter("nombreUsuario");
        String password= request.getParameter("password");
        int i = Integer.parseInt(request.getParameter("idUsuario"));
        //Usuario usuario = control.buscarUsuario(parseInt(request.getParameter("idUsuario")));
        //int idUsuario = usuario.getId_usuario();
        control.modificarEmpleado(id, nombre,apellido,direccion,dni,fechaNac,nacionalidad,celular,email,cargo,sueldo,nombreUsuario,password, i);
        
        request.getSession().setAttribute("listaEmpleados", control.traerEmpleados());
        
        
        response.sendRedirect("./pages/listadoEmpleados.jsp");
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        
        Empleado empleado = control.buscarEmpleado(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("empleado", empleado);
        response.sendRedirect("./pages/modificarEmpleado.jsp");
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
