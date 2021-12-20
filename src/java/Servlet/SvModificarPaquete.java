/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import Logica.PaqueteTuristico;
import Logica.Servicio;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

/**
 *
 * @author villa
 */
@WebServlet(name = "SvModificarPaquete", urlPatterns = {"/SvModificarPaquete"})
public class SvModificarPaquete extends HttpServlet {

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
        
        String costoPaquete = request.getParameter("totalServicios");
        
        
         PaqueteTuristico paquete = control.buscarPaquete(id);
         
         String idServicio = request.getParameter("idServicio");
         String [] idS = idServicio.split(",");
         List<Servicio> servicio = new ArrayList<>();
         Double costoT = 0.0;
         
         
         for( int i=0; i < idS.length; i++){
         
             int sv = Integer.parseInt(idS[i]);
             Servicio unServicio = control.buscarServicio(sv);
             servicio.add(unServicio);
             costoT = costoT + unServicio.getCosto_servicio();
         }
        control.modificarPaquete(id, costoPaquete, servicio);
        request.getSession().setAttribute("listaPaquetes", control.buscarPaquetes());
        response.sendRedirect("./pages/listadoPaquetes.jsp");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
         
        int id = Integer.parseInt(request.getParameter("id"));
         String nombre= request.getParameter("nombreSv");
         String descipcion= request.getParameter("descripcionSv");
         String costo = request.getParameter("costoSv");
         String codigo= request.getParameter("codigoSv");
        
        PaqueteTuristico paquete = control.buscarPaquete(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("paquete", paquete);
        
        response.sendRedirect("./pages/modificarPaquete.jsp");
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
