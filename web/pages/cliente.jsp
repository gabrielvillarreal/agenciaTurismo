<%-- 
    Document   : venta
    Created on : 4 dic. 2021, 20:54:57
    Author     : villa
--%>

<%@page contentType="text/html" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link  rel="icon"   href="../images/icon/ola.png" type="image/png" />

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
                                <a href="../pages/listadoVentas.jsp">
                                    <i class="fas fa-shopping-basket"></i>Ventas</a>
                            </li>
                            <li>
                                <a href="../pages/listadoPaquetes.jsp">
                                    <i class="fas fa-clipboard-list"></i>Paquetes Turisticos</a>
                            </li>
                            <li>
                                <a href="../pages/listadoServicios.jsp">
                                    <i class="fas fa-clipboard-check"></i>Servicio</a>
                            </li>
                                
                           
                            <li>
                                <a href="../pages/listadoClientes.jsp">
                                    <i class="fas fa-users"></i>Clientes</a>
                            </li>
                            
                            <li>
                                <a href="../pages/listadoEmpleados.jsp">
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
                                <a href="../pages/listadoVentas.jsp">
                                    <i class="fas fa-shopping-basket"></i>Ventas</a>
                            </li>
                            <li>
                                <a href="../pages/listadoPaquetes.jsp">
                                    <i class="fas fa-clipboard-list"></i>Paquetes Turisticos</a>
                            </li>
                            <li>
                                <a href="../pages/listadoServicios.jsp">
                                    <i class="fas fa-clipboard-check"></i>Servicio</a>
                            </li>
                                
                           
                            <li>
                                <a href="../pages/listadoClientes.jsp">
                                    <i class="fas fa-users"></i>Clientes</a>
                            </li>
                            
                            <li>
                                <a href="../pages/listadoEmpleados.jsp">
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
                                            <li class="list-inline-item">
                                                <a href="../index.jsp">Inicio</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item">
                                                <a href="./listadoClientes.jsp">Listado de Clientes</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item active">Agregar Cliente</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->
            
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="card my-4">
            <div class="card-header">
              <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                <h1 class="text-dark text-capitalize ps-3">Cliente</h1>
              </div>
            </div>
              <div class="card-body">
                  <form action="../SvCliente" method="POST" >
                      <div class="form-row">
                          <div class="form-group col-md-6">
                            <label for="nombre" class="pr-1  form-control-label">Nombre </label>
                            <input type="text" id="nombre" name="nombre" class="form-control">
                          </div>
                          <div class="form-group col-md-6 ">
                            <label for="apellido" class="pr-1  form-control-label">Apellido </label>
                            <input type="text" id="apellido" name="apellido" class="form-control">
                          </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="direccion" class="pr-1  form-control-label">Direccion </label>
                            <input type="text" id="direccion" name="direccion" class="form-control">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="dni" class="pr-1  form-control-label">DNI</label>
                            <input type="text" id="dni" name="dni" class="form-control">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="nacionalidad" class="pr-1  form-control-label">Nacionalidad</label>
                            <input type="text" id="nacionalidad" name="nacionalidad" class="form-control">
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="fecha" class="pr-1  form-control-label">fecha de Nacimiento</label>
                            <input type="text" id="fecha" name="fecha" class="form-control">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="celular" class="pr-1  form-control-label">Telefono celular</label>
                            <input type="text" id="celular" name="celular" class="form-control">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="email" class="pr-1  form-control-label">E-mail</label>
                            <input type="text" id="email" name="email" class="form-control">
                        </div>
                    </div>
                    
                      
                    
                    
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary " onclick="validar()">Aceptar</button>
                    </div>
                  </form>
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
        function validar(){
            var nombre= document.getElementById("nombre").value;
            var apellido = document.getElementById("apellido").value;
            var direccion = document.getElementById("direccion").value;
            var celular = document.getElementById("celular").value;
            var email = document.getElementById("email").value;
            var nacionalidad = document.getElementById("nacionalidad").value;
            var fecha = document.getElementById("fecha").value;
            var dni = document.getElementById("dni").value;
            
            

            if( nombre ===""|| apellido==="" || direccion==="" || celular==="" || email==="" || nacionalidad==="" || dni==="" ){
                alert("Ingrese el valor de todos los campos para poder ingresar el cliente correctamente");
                event.preventDefault();
            }
        }
    </script>
    
<%}%>
</body>

</html>