/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author villa
 */
@WebServlet(name = "SvVenta", urlPatterns = {"/SvVenta"})
public class SvVenta extends HttpServlet {

    
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
        
        
        String idServicio = request.getParameter("idServicio");
        String idPaquete = request.getParameter("idPaquete");
        String idCliente = request.getParameter("idCliente");
        String idEmpleado = request.getParameter("idEmpleado");
        String medioPago = request.getParameter("MedioPago");
        String fechaVenta = request.getParameter("fechaVenta");
        String servOPaq = request.getParameter("radios");
        System.out.println(servOPaq);
        
        if(Integer.parseInt(servOPaq)==1){
            servOPaq = "servicio";
        }else{
            servOPaq = "paquete";
        }
            
         
        System.out.println(servOPaq + "servicio:" + idServicio + " paquete:" + idPaquete + " cliente:" + idCliente + " empleado:" + idEmpleado + " medioPago:" + medioPago + " fecha:" + fechaVenta);
        
        Controladora control = new Controladora();
        control.crearVenta(idServicio,idPaquete,servOPaq,idCliente,idEmpleado, medioPago, fechaVenta);
        
        response.sendRedirect("./pages/listadoVentas.jsp");
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
