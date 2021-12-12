<%-- 
    Document   : listadoClientes
    Created on : 5 dic. 2021, 7:40:42
    Author     : villa
--%>

<%@page import="Logica.Servicio"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.List"%>
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

<body class="animsition">
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
                    <h4 class="name">Gabriel Villarreal</h4>
                    <a href="#">Sign out</a>
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
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-copy"></i>Pages
                                <span class="arrow">
                                    <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="login.html">
                                        <i class="fas fa-sign-in-alt"></i>Login</a>
                                </li>
                                <li>
                                    <a href="register.html">
                                        <i class="fas fa-user"></i>Register</a>
                                </li>
                                <li>
                                    <a href="forget-pass.html">
                                        <i class="fas fa-unlock-alt"></i>Forget Password</a>
                                </li>
                            </ul>
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
                            <img src="../images/icon/avatar-big-01.jpg" alt="John Doe" />
                        </div>
                        <h4 class="name">john doe</h4>
                        <a href="#">Sign out</a>
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
                                <a href="./metodosPago.jsp">
                                    <i class="fas fa-dollar-sign"></i>Metodos de Pago</a>
                            </li>
                            <li>
                                <a href="./listadoEmpleados.jsp">
                                    <i class="fas fa-user"></i>Empleado</a>
                            </li>
                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-copy"></i>Pages
                                    <span class="arrow">
                                        <i class="fas fa-angle-down"></i>
                                    </span>
                                </a>
                                <ul class="list-unstyled navbar__sub-list js-sub-list">
                                    <li>
                                        <a href="login.html">
                                            <i class="fas fa-sign-in-alt"></i>Login</a>
                                    </li>
                                    <li>
                                        <a href="register.html">
                                            <i class="fas fa-user"></i>Register</a>
                                    </li>
                                    <li>
                                        <a href="forget-pass.html">
                                            <i class="fas fa-unlock-alt"></i>Forget Password</a>
                                    </li>
                                </ul>
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
                                            <li class="list-inline-item active">
                                                <a href="../index.jsp">Inicio</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item">Paquetes Turisticos</li>
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
        <div class="row ">
        <div class="col-12">
          <div class="card my-4">
            <div class="card-header p-b-0 px-3">
                
                <h1 class="m-b-0">Listado de Clientes</h1>
                
            </div>
               <div>
                  <br>
                  <a type="button" class="btn btn-primary align-self-end float-right" href="./servicio.jsp">Agregar Cliente</a>
              </div>
              <div class="main-content">
                  <div class="table-responsive table--no-card m-b-30">
                      
                            
                                    <table class="table table-borderless table-stripped table-earning">
                                        <thead>
                                            <tr>
                                                <th>Nombre</th>
                                                <th>Apellido</th>
                                                <th>Direccion</th>
                                                <th>Dni</th>
                                                <th>fecha Nacimiento</th>
                                                <th>Nacionalidad</th>
                                                <th>Celular</th>
                                                <th>Email</th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <% Controladora control = new Controladora();
                        
                                        List <Cliente> listaCliente = control.traerClientes();
                                        for (Cliente cliente : listaCliente) {

                                            String nombre = cliente.getNombre(); 
                                            String apellido = cliente.getApellido();
                                            String direccion =  cliente.getDireccion());
                                            String destino = serv.getDestino_servicio();
                                            Date fecha = serv.getFecha_servicio();
                                            SimpleDateFormat fechaCorta =  new SimpleDateFormat("dd/MM/yyyy");
                                            int id = serv.getCodigo_servicio();%>
                                            <tr>
                                                <td><%=id%></td>
                                                <td><%=nombre%></td>
                                                <td><%=descripcion%></td>
                                                <td><%=destino%></td>
                                                <td><%=fechaCorta.format(fecha)%></td>
                                                <td><%=costo%></td>
                                                <input type="hidden" name="id" value="<%=id%>" >
                                                <td>
                                                    <div class="table-data-feature section__content">
                                                        <form name="frmBorrarServicio" action="../SvEliminarServicio" method="POST" style="display:inline">
                                                            <input type="hidden" name="id" value="<%=id%>" >
                                                            <button type="submit" class="item" data-toggle="tooltip" data-placement="top" title data-original-title="Eliminar"><i class="zmdi zmdi-delete"></i></button>
                                                        </form>
                                                        <div class="pr-3"></div>    
                                                        <form name="frmEditarServicio" action="../SvEditarServicio" method="POST" style="display:inline">
                                                            <input type="hidden" name="id" value="<%=id%>" >
                                                            <button type="submit" class="item" data-toggle="tooltip" data-placement="top" title data-original-title="Editar"><i class="zmdi zmdi-edit"></i></button>
                                                        </form>
                                                    </div>
                                                    
                                                </td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                                    </table>
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

</body>
</html>
