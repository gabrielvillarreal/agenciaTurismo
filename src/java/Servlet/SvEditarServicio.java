/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import Logica.Servicio;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import static java.util.Objects.isNull;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "SvEditarServicio", urlPatterns = {"/SvEditarServicio"})
public class SvEditarServicio extends HttpServlet {

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
            Logger.getLogger(SvEditarServicio.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        control.modificarServicio(id,nombre,descripcion,destino,costo,dateF);
        
        request.getSession().setAttribute("listaServicios", control.traerServicios());
        
        
        response.sendRedirect("./pages/listadoServicios.jsp");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
         int id = Integer.parseInt(request.getParameter("id"));
        
        
        Servicio servicio = control.buscarServicios(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("servicio", servicio);
        response.sendRedirect("./pages/modificarServicio.jsp");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
