
package Servlet;

import Logica.Controladora;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
        DateFormat sourceFormat = new SimpleDateFormat("dd/MM/yyyy");
        Date dateF=null;
        try {
             dateF = sourceFormat.parse(fecha);
        } catch (ParseException ex) {
            Logger.getLogger(SvServicio.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        control.crearServicio(nombre,descripcion,destino,costo,dateF);
        
        response.sendRedirect("./pages/listadoServicios.jsp");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
