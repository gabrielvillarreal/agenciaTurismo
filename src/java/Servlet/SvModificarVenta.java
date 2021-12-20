/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import Logica.Venta;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author villa
 */
@WebServlet(name = "SvModificarVenta", urlPatterns = {"/SvModificarVenta"})
public class SvModificarVenta extends HttpServlet {

    Controladora control = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int idVenta = Integer.parseInt(request.getParameter("idVenta"));
        String idServicio = request.getParameter("idServicio");
        String idPaquete = request.getParameter("idPaquete");
        String idCliente = request.getParameter("idCliente");
        String idEmpleado = request.getParameter("idEmpleado");
        String medioPago = request.getParameter("MedioPago");
        //String fechaVenta = request.getParameter("fechaVenta");
        String fecha = request.getParameter("fechaVenta");        
        DateFormat sourceFormat = new SimpleDateFormat("dd/MM/yyyy");
        Date dateF=null;
        try {
             dateF = sourceFormat.parse(fecha);
        } catch (ParseException ex) {
            Logger.getLogger(SvVenta.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String servOPaq = request.getParameter("radios");
        System.out.println(servOPaq);
        
        if(Integer.parseInt(servOPaq)==1){
            servOPaq = "servicio";
        }else{
            servOPaq = "paquete";
        }
        
        
        control.modificarVenta(idVenta, idServicio,idPaquete,servOPaq,idCliente,idEmpleado, medioPago, dateF);
        
        
        
        
        request.getSession().setAttribute("listaVentas", control.traerVentas());
        
        
        response.sendRedirect("./pages/listadoVentas.jsp");
        
    }
    

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        
        Venta venta = control.buscarVenta(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("venta", venta);
        response.sendRedirect("./pages/modificarVenta.jsp");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
