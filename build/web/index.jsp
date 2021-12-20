<%-- 
    Document   : index
    Created on : 2 dic. 2021, 20:07:52
    Author     : villa
--%>


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
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="vendor/vector-map/jqvmap.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <%
        HttpSession miSession = request.getSession();
        String usuario = (String) miSession.getAttribute("usuario");
        if(usuario == null){
            response.sendRedirect("./pages/sign-in.jsp");
        }else{
    %>
    <div class="">
        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar2">
            <div class="logo">
                <a href="#">
                    <img src="images/dreamTravel.png" alt="Dream Travel" />
                </a>
            </div>
            <div class="menu-sidebar2__content js-scrollbar1">
                <div class="account2">
                    <div class="image img-cir img-120">
                        <img src="images/icon/avatar-big-01.jpg" alt="Gabriel Villarreal" />
                    </div>
                    <h4 class="name"><%=usuario%></h4>
                    <form action="SvUsuario" method="get">
                        <button class="btn-sm btn-info" type="submit">Cerrar Sesion</button>
                    </form>
                </div>
                <nav class="navbar-sidebar2">
                    <ul class="list-unstyled navbar__list">
                            
                        <li>
                            <a href="index.jsp">
                                <i class="fas fa-home"></i>Inicio</a>
                        </li>
                        <li>
                            <a href="./pages/listadoVentas.jsp">
                                <i class="fas fa-shopping-basket"></i>Ventas</a>
                        </li>
                        <li>
                            <a href="./pages/listadoPaquetes.jsp">
                                <i class="fas fa-clipboard-list"></i>Paquetes Turisticos</a>
                        </li>
                        <li>
                            <a href="./pages/listadoServicios.jsp">
                                <i class="fas fa-clipboard-check"></i>Servicio</a>
                        </li>
                            
                       
                        <li>
                            <a href="./pages/listadoClientes.jsp">
                                <i class="fas fa-users"></i>Clientes</a>
                        </li>
                        
                        <li>
                            <a href="./pages/listadoEmpleados.jsp">
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
            
            <aside class="menu-sidebar2 js-right-sidebar d-block d-lg-none">
                <div class="logo">
                    <a href="#">
                        <img src="images/dreamTravel.png" style="height:50px; "  alt="Dream Travel" />
                    </a>
                </div>
                <div class="menu-sidebar2__content js-scrollbar2">
                    <div class="account2">
                        <div class="image img-cir img-120">
                            <img src="images/icon/avatar-big-01.jpg" alt="<%=usuario%>" />
                        </div>
                         <h4 class="name"><%=usuario%></h4>
                        <form action="SvUsuario" method="get">
                            <button class="btn-sm btn-info" type="submit">Cerrar Sesion</button>
                        </form>
                    <nav class="navbar-sidebar2">
                        <ul class="list-unstyled navbar__list">
                            <li>
                                <a href="./index.jsp">
                                    <i class="fas fa-home"></i>Inicio</a>
                            </li>
                            <li>
                                <a href="./pages/listadoVentas.jsp">
                                    <i class="fas fa-shopping-basket"></i>Ventas</a>
                            </li>
                            <li>
                                <a href="./pages/listadoPaquetes.jsp">
                                    <i class="fas fa-clipboard-list"></i>Paquetes Turisticos</a>
                            </li>
                            <li>
                                <a href="./pages/listadoServicios.jsp">
                                    <i class="fas fa-clipboard-check"></i>Servicio</a>
                            </li>
                                
                           
                            <li>
                                <a href="./pages/listadoClientes.jsp">
                                    <i class="fas fa-users"></i>Clientes</a>
                            </li>
                            
                            <li>
                                <a href="./pages/listadoEmpleados.jsp">
                                    <i class="fas fa-user"></i>Empleado</a>
                            </li>
                            
                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- END HEADER DESKTOP-->

           
            
            <div class="mt-3">
                <div class="section__content">
                    <div class="container-fluid">
                        <div class="au-card"   style="background-image:url('images/java.jpg'); height: 790px;">
                        </div>
                    </div>
                </div>
            </div>

             
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 
                                    <script>
                                        document.write(new Date().getFullYear())
                                    </script> Cesar Gabriel Villarreal. All rights reserved. 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>
    <script src="vendor/vector-map/jquery.vmap.js"></script>
    <script src="vendor/vector-map/jquery.vmap.min.js"></script>
    <script src="vendor/vector-map/jquery.vmap.sampledata.js"></script>
    <script src="vendor/vector-map/jquery.vmap.world.js"></script>

    <!-- Main JS-->
    <script src="js/main.js"></script>
<%}%>
</body>

</html>
<!-- end document-->
