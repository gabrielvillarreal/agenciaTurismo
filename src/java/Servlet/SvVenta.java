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
        
        int idVenta = Integer.parseInt(request.getParameter("idVenta"));
        int idServicio = Integer.parseInt(request.getParameter("idServicio"));
        int idPaquete = Integer.parseInt(request.getParameter("idPaquete"));
        int idCliente = Integer.parseInt(request.getParameter("idEmpleado"));
        int idEmpleado = Integer.parseInt(request.getParameter("idEmpleado"));
        int idMedioPago = Integer.parseInt(request.getParameter("idMedioPago"));
        String fechaVenta = request.getParameter("fechaVenta");
        
        
        Controladora control = new Controladora();
        control.crearVenta(idVenta,idServicio,idPaquete,idCliente,idEmpleado, idMedioPago, fechaVenta);
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
