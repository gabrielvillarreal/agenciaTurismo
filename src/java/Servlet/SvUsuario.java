/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.jni.Socket;

/**
 *
 * @author villa
 */
@WebServlet(name = "SvUsuario", urlPatterns = {"/SvUsuario"})
public class SvUsuario extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        HttpSession miSession = request.getSession();
        miSession.removeAttribute("usuario");
        
        response.sendRedirect("./pages/sign-in.jsp");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
   
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        
        Controladora control = new Controladora();
        
        boolean autenticated = control.verificarAutenticacion(usuario, password);
        
        if(autenticated==true){
            //obtengo la sesion
            HttpSession session = request.getSession(true);
            session.setAttribute("usuario", usuario);
            session.setAttribute("password", password);
            
            response.sendRedirect("index.jsp");
        }else{
            
            response.sendRedirect("./pages/sign-in.jsp");
        }
    
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
