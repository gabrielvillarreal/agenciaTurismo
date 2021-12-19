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
import static java.util.Objects.isNull;
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
@WebServlet(name = "SvEliminarEmpleado", urlPatterns = {"/SvEliminarEmpleado"})
public class SvEliminarEmpleado extends HttpServlet {

   
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
        
         int id = Integer.parseInt(request.getParameter("id"));
        Controladora control = new Controladora();
        
        Usuario usuario = control.buscarUsuario(Integer.parseInt(request.getParameter("idUsuario")));
        Empleado empleado = control.buscarEmpleado(Integer.parseInt(request.getParameter("id")));
        int idUsuario = empleado.getUsuario().getId_usuario();
                
        System.out.println("id usuario:" + idUsuario);
        System.out.println("idEmpleado" + id);
        
        HttpSession misession = request.getSession();
        String pwd = (String) misession.getAttribute("password");
        String user = (String) misession.getAttribute("usuario");
        System.out.println("password: "+pwd + "user: " + user);
        
        control.borrarEmpleado(id);
        
        control.borrarUsuario(idUsuario);
        
        //verifico si borro el usuario que esta logeado u otro user
        if(user.equals(usuario.getUsuario()) && pwd.equals(usuario.getPassword())){
            response.sendRedirect("./pages/sign-in.jsp");
        }else{
            response.sendRedirect("./pages/listadoEmpleados.jsp");
        }
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
