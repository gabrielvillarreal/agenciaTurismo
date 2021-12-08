
package Servlet;

import Logica.Controladora;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


@WebServlet(name = "SvServicio", urlPatterns = {"/SvServicio"})
public class SvServicio extends HttpServlet {
Controladora control = new Controladora();
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        //traigo los datos del JSP
        String descripcion = request.getParameter("descripcion");
        String nombre = request.getParameter("nombre");
        String destino = request.getParameter("destino");
        Double costo = Double.parseDouble(request.getParameter("costo"));
        String fecha = request.getParameter("fecha");
        
        control.crearServicio(nombre,descripcion,destino,costo,fecha);
        
        response.sendRedirect("./pages/listadoServicios.jsp");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
