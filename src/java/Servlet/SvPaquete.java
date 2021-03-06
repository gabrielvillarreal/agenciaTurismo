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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

/**
 *
 * @author villa
 */
@WebServlet(name = "SvPaquete", urlPatterns = {"/SvPaquete"})
public class SvPaquete extends HttpServlet {

    Controladora control = new Controladora();
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List idServicio = new ArrayList();
        idServicio.add(request.getParameter("idServicio"));
        
        System.out.println(idServicio.size()); //si llego puedo usarlo para validar si el usuario cargo algun servicio
        System.out.println("sin values:" + request.getParameter("idServicio"));
        System.out.println("idServicio:" +idServicio);
        List <Servicio> id = new ArrayList<>();
        String x = request.getParameter("idServicio");
        String datos[] = x.split(",");
        Servicio busca;
        for(String dato : datos){
            busca = control.buscarServicio(Integer.parseInt(dato));
            System.out.println("Servicio: " + id);
            id.add(busca);
        }
                
        //System.out.println(id);
        //String datos[] = id.split(",");
//        
//        for (int i=0; i<datos.length; i++){
//            idServicio.add(datos[i]);
//        }
         
        String costoPaquete = request.getParameter("totalServicios");
        System.out.println(costoPaquete);
        control.crearPaquete(id,costoPaquete);
        
        response.sendRedirect("./pages/listadoPaquetes.jsp");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
