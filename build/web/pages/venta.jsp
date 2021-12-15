<%-- 
    Document   : venta
    Created on : 4 dic. 2021, 20:54:57
    Author     : villa
--%>

<%@page import="Logica.Empleado"%>
<%@page import="Logica.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Servicio"%>
<%@page import="Logica.PaqueteTuristico"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
   <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    

    <!-- Title Page-->
    <title>Dream travel</title>

    <!-- Fontfaces CSS-->
    <link href="../css/font-face.css" rel="stylesheet" media="all">
    <link href="../vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="../vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="../vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="../vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="../vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="../vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="../vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="../vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="../vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="../vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="../vendor/vector-map/jqvmap.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../css/theme.css" rel="stylesheet" media="all">
</head>

<body class="g-sidenav-show  bg-gray-200">
  <%
            HttpSession miSession = request.getSession();
            String usuario = (String) miSession.getAttribute("usuario");
            if(usuario == null){
                response.sendRedirect("./sign-in.jsp");
            }else{
        %>
        <div class="page-wrapper">
            <!-- MENU SIDEBAR-->
            <aside class="menu-sidebar2">
                <div class="logo">
                    <a href="#">
                        <img src="../images/dreamTravel.png" alt="Dream Travel" />
                    </a>
                </div>
                <div class="menu-sidebar2__content js-scrollbar1">
                    <div class="account2">
                        <div class="image img-cir img-120">
                            <img src="../images/icon/avatar-big-01.jpg" alt="Gabriel Villarreal" />
                        </div>
                        <h4 class="name"><%=usuario%></h4>
                        <form action="../SvUsuario" method="get">
                            <button class="btn-sm btn-info" type="submit">Cerrar Sesion</button>
                        </form>
                    </div>
                    <nav class="navbar-sidebar2">
                        <ul class="list-unstyled navbar__list">

                            <li>
                                <a href="../index.jsp">
                                    <i class="fas fa-home"></i>Inicio</a>
                            </li>
                            <li>
                                <a href="./listadoVentas.jsp">
                                    <i class="fas fa-shopping-basket"></i>Ventas</a>
                            </li>
                            <li>
                                <a href="./listadoPaquetes.jsp">
                                    <i class="fas fa-clipboard-list"></i>Paquetes Turisticos</a>
                            </li>
                            <li>
                                <a href="./listadoServicios.jsp">
                                    <i class="fas fa-clipboard-check"></i>Servicio</a>
                            </li>


                            <li>
                                <a href="./listadoClientes.jsp">
                                    <i class="fas fa-users"></i>Clientes</a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fas fa-dollar-sign"></i>Metodos de Pago</a>
                            </li>
                            <li>
                                <a href="./listadoEmpleados.jsp">
                                    <i class="fas fa-user"></i>Empleado</a>
                            </li>
                            

                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- END MENU SIDEBAR-->

            <!-- PAGE CONTAINER-->
            <div class="page-container2">
                <!-- HEADER DESKTOP-->
                <header class="header-desktop2">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="header-wrap2">
                                <div class="logo d-block d-lg-none">
                                    <a href="#">
                                        <img src="../images/dreamTravel.png" style="height:50px"  alt="Dream Travel" />
                                    </a>
                                </div>
                                <div class="header-button2">

                                    <div class="header-button-item has-noti js-item-menu">

                                        <div class="header-button-item mr-0 js-sidebar-btn">
                                            <i class="zmdi zmdi-menu"></i>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                </header>
                <aside class="menu-sidebar2 js-right-sidebar d-block d-lg-none">
                    <div class="logo">
                        <a href="#">
                            <img src="../images/dreamTravel.png" style="height:50px; "  alt="Dream Travel" />
                        </a>
                    </div>
                    <div class="menu-sidebar2__content js-scrollbar2">
                        <div class="account2">
                            <div class="image img-cir img-120">
                                <img src="../images/icon/avatar-big-01.jpg" alt="<%=usuario%>" />
                            </div>
                            <h4 class="name"><%=usuario%></h4>
                            <form action="../SvUsuario" method="get">
                                <button class="btn-sm btn-info" type="submit">Cerrar Sesion</button>
                            </form>
                            
                        </div>
                    <nav class="navbar-sidebar2">
                        <ul class="list-unstyled navbar__list">
                            <li>
                                <a href="../index.jsp">
                                    <i class="fas fa-home"></i>Inicio</a>
                            </li>
                            <li>
                                <a href="./listadoVentas.jsp">
                                    <i class="fas fa-shopping-basket"></i>Ventas</a>
                            </li>
                            <li>
                                <a href="./listadoPaquetes.jsp">
                                    <i class="fas fa-clipboard-list"></i>Paquetes Turisticos</a>
                            </li>
                            <li>
                                <a href="./listadoServicios.jsp">
                                    <i class="fas fa-clipboard-check"></i>Servicio</a>
                            </li>
                                
                           
                            <li>
                                <a href="./listadoClientes.jsp">
                                    <i class="fas fa-users"></i>Clientes</a>
                            </li>
                            <li>
                                <a href="./listadoMetodoPagos.jsp">
                                    <i class="fas fa-dollar-sign"></i>Metodos de Pago</a>
                            </li>
                            <li>
                                <a href="./listadoEmpleados.jsp">
                                    <i class="fas fa-user"></i>Empleado</a>
                            </li>
                            
                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- END HEADER DESKTOP-->

            <!-- BREADCRUMB-->
            <section class="au-breadcrumb m-t-75">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="au-breadcrumb-content">
                                    <div class="au-breadcrumb-left">
                                        <span class="au-breadcrumb-span">Ud esta aqui:</span>
                                        <ul class="list-unstyled list-inline au-breadcrumb__list">
                                            <li class="list-inline-item ">
                                                <a href="../index.jsp">Inicio</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item">
                                                <a href="../pages/listadoVentas.jsp">Listado de Ventas</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item active">
                                                <a>Agregar Venta</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->      
  
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-12">
          <div class="card my-4">
            <div class="card-header">
              <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                <h1 class="text-dark text-capitalize ps-3">Ventas</h1>
              </div>
            </div>
              <div class="card-body">
                  <div >
                      
                      <form action="agregarVenta" id="formularioVenta">
                          
                      <div class="form-group col-6">
                        <label for="fecha" class="pr-1  form-control-label">Fecha</label>
                        <input type="text" id="fechaVenta" name="fechaVenta" class="form-control">
                      </div>
                          
                        <div class="row form-group">
                            <div class="col-6 ml-3">
                                <label class="form-control-label" for="cliente">cliente</label>
                            
                                <select class="form-control" id="idCliente" name="idCliente">
                                <%
                                Controladora control = new Controladora();
                                List <Cliente> listaClientes = control.traerClientes();
                                for (Cliente cli : listaClientes) {

                                    String nombre = cli.getNombre(); 
                                    String apellido = cli.getApellido();
                                    int idCliente = cli.getId_cliente();%>

                                  <option id="<%=idCliente%>" name="<%=nombre%>"><%=nombre + " " + apellido  %></option>

                                <%}%>
                                </select>
                            </div>
                        </div>
                        
                                
                        
                            <div class="col col-md-12">
                                <div class="form-check">
                                    <div class="radio">
                                        <label for="radio1" class="form-check-label ">
                                            <input type="radio" id="radio1" name="radios" value="1" class="form-check-input" onchange="mostrar(this.value);" checked="true">Servicios
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label for="radio2" class="form-check-label ">
                                            <input type="radio" id="radio2" name="radios" value="2" class="form-check-input" onchange="mostrar(this.value);">Paquetes Turisticos
                                        </label>
                                    </div>
                                </div>

                            <div id="divservicio" class="row form-group" >

                                <div  class="col-9 col-md-6">
                                    <select class="form-control" id="idServicio" name="idServicio">
                                    <%

                                    List <Servicio> listaServicio = control.traerServicios();
                                    for (Servicio serv : listaServicio) {

                                        String nombre = serv.getNombre(); 
                                        String descripcion = serv.getDescripcion_breve();
                                        String costoServicio =  String.valueOf(serv.getCosto_servicio());
                                        int id = serv.getCodigo_servicio();%>

                                      <option id="<%=id%>" name="<%=costoServicio%>"><%=nombre + " : " + descripcion + " ($ " + costoServicio + ")" %></option>

                                    <%}%>
                                    </select>
                                </div>
                            </div>

                            <div id="divpaquete" class="row form-group" style="display:none;">

                                <div class="col-9 col-md-6">
                                    <select class="form-control" id="idPaquete" name="idPaquete">
                                    <%

                                    List <PaqueteTuristico> listaPaquetes = control.buscarPaquetes();
                                    for (PaqueteTuristico pq : listaPaquetes) {

                                        int codigoPaquete = pq.getCodigo_paquete(); 
                                        Double costoPaquete = pq.getCosto_paquete();
                                        %>

                                      <option id="<%=codigoPaquete%>" name="<%=codigoPaquete%>"><%="codigo del Paquete: " + codigoPaquete + " ($ " + costoPaquete + ")"  %></option>

                                    <%}%>
                                    </select>
                                </div>
                            </div>
                        </div>
                                    
                        <div class="row form-group col-6 ml-2">
                            <label class="form-control-label" for="idMedioPago">Medio de Pago</label>
                            <select class="form-control" id="idMedioPago" name="idMedioPago">
                              <option value="efectivo">Efectivo</option>
                              <option value="tarjetaDebito">Tarjeta de Debito</option>
                              <option value="tarjetaCredito">Tarjeta de Credito</option>
                              <option value="monederoVirtual">Monedero Virtual</option>
                              <option value="transferencia">Transferencia</option>
                              
                            </select>
   
                      </div>
                                    
                        <div class="row form-group">
                            <div class="col-6 ml-3">
                                <label class="form-control-label" for="empleado">Empleado</label>
                            
                                <select class="form-control" id="idEmpleado" name="idEmpleado">
                                <%
                                
                                List <Empleado> listaEmpleado = control.traerEmpleados();
                                for (Empleado emp : listaEmpleado) {

                                    String nombre = emp.getNombre(); 
                                    String apellido = emp.getApellido();
                                    int idEmpleado = emp.getId_empleado();
                                    String puesto = emp.getCargo();
                                
                                %>

                                  <option id="<%=idEmpleado%>" name="<%=nombre%>"><%=nombre + " " + apellido + " : " + puesto  %></option>

                                <%}%>
                                </select>
                            </div>
                        </div>
                                
                                
                      </form>
                               <form name="agregarVenta" action="../SvVenta" method="post" style="display:inline" class="text-center">  
                                <div>
                                     <button type="submit" class="btn btn-primary ">Aceptar</button>
                                </div>
                  </form>
                    
                  </form>
                 
                </div>
            
          </div>
        </div>
      </div>
      </div>
    </div>
            <section>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © <script>
                  document.write(new Date().getFullYear())
                </script> Cesar Gabriel Villarreal. All rights reserved. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END PAGE CONTAINER-->
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="../vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="../vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="../vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="../vendor/slick/slick.min.js">
    </script>
    <script src="../vendor/wow/wow.min.js"></script>
    <script src="../vendor/animsition/animsition.min.js"></script>
    <script src="../vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="../vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="../vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="../vendor/circle-progress/circle-progress.min.js"></script>
    <script src="../vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="../vendor/select2/select2.min.js">
    </script>
    <script src="../vendor/vector-map/jquery.vmap.js"></script>
    <script src="../vendor/vector-map/jquery.vmap.min.js"></script>
    <script src="../vendor/vector-map/jquery.vmap.sampledata.js"></script>
    <script src="../vendor/vector-map/jquery.vmap.world.js"></script>

    <!-- Main JS-->
    <script src="../js/main.js"></script>
  
  
  <script>
     function mostrar(dato) {
        if (dato == "1") {
          document.getElementById("divservicio").style.display = "block";
          document.getElementById("divpaquete").style.display = "none";
          
        }
        if (dato == "2") {
          document.getElementById("divservicio").style.display = "none";
          document.getElementById("divpaquete").style.display = "block";
          
        }
        
      }
  </script>
 <%}%>
</body>

</html>