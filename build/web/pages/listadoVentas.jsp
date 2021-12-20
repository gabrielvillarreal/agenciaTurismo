<%-- 
    Document   : listadoClientes
    Created on : 5 dic. 2021, 7:40:42
    Author     : villa
--%>

<%@page import="Logica.Venta"%>
<%@page import="Logica.Empleado"%>
<%@page import="Logica.Cliente"%>
<%@page import="Logica.PaqueteTuristico"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Logica.Servicio"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
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
            if (usuario == null) {
                response.sendRedirect("./sign-in.jsp");
            } else {
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
                            <button class="btn-sm btn-info" type="submit"><i class="zmdi zmdi-power"></i> Cerrar Sesion</button>
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
                                <button class="btn-sm btn-info" type="submit"><i class="zmdi zmdi-power"></i> Cerrar Sesion</button>
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
                                                <li class="list-inline-item active">
                                                    <a href="../index.jsp">Inicio</a>
                                                </li>
                                                <li class="list-inline-item seprate">
                                                    <span>/</span>
                                                </li>
                                                <li class="list-inline-item">Listado de Ventas</li>
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

                                    <h1 class="m-b-0">Listado de Ventas</h1>

                                </div>
                                <div>
                                    <br>
                                    <a type="button" class="btn btn-primary float-right mr-5" href="./venta.jsp">Agregar Venta</a>
                                </div>
                                <div class="main-content">
                                    <div class="table-responsive table--no-card m-b-30">
                                        <% Controladora control = new Controladora();
                                            List<Venta> listaVentas = control.traerVentas();

                                        %>


                                        <table class="table table-borderless table-stripped table-earning">
                                            <thead>
                                                <tr>
                                                    <th>Cliente</th>
                                                    <th>Fecha venta</th>
                                                    <th>Medio de pago</th>
                                                    <th>Tipo</th>
                                                    <th>Descripcion</th>
                                                    <th>Empleado</th>
                                                    <th class="text-right">Costo</th>
                                                    <th></th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>


                                                <%for (Venta venta : listaVentas) {

                                                        Date fechaVenta = venta.getFecha_venta();
                                                        SimpleDateFormat fechaCorta = new SimpleDateFormat("dd/MM/yyyy");
                                                        String cliente = venta.getCliente().getApellido();
                                                        String descripcion;
                                                        String empleado = venta.getEmpleado().getApellido();
                                                        String tipo;

                                                        Double costoSP = null;
                                                        if (venta.getServicio() != null) {
                                                            costoSP = venta.getServicio().getCosto_servicio();// listaServicios.get(venta.getNum_venta()).getCosto_servicio();
                                                            descripcion = venta.getServicio().getDescripcion_breve();
                                                            tipo = "Servicio";
                                                        } else {
                                                            costoSP = venta.getPaqueteTuristico().getCosto_paquete();// listaPaquetes.get(venta.getNum_venta()).getCosto_paquete();
                                                            descripcion = "Codigo del paquete: ";
                                                            descripcion = descripcion + String.valueOf(venta.getPaqueteTuristico().getCodigo_paquete());
                                                            tipo = "Paquete Turistico";
                                                        }
                                                String medioPago = venta.getMedioPago();

                                                int idVenta = venta.getNum_venta();%>
                                                <tr>
                                                    <td><%=cliente%></td>
                                                    <td><%=fechaCorta.format(fechaVenta)%></td>
                                                    <td><%=medioPago%></td>
                                                    <td><%=tipo%></td>
                                                    <td><%=descripcion%></td>
                                                    <td><%=empleado%></td>
                                                    <td><%=costoSP%></td>

                                            <input type="hidden" id="<%=idVenta%>" name="id" value="<%=idVenta%>" >
                                            <td>
                                                <div class="table-data-feature section__content">
                                                    <form name="frmEliminarVenta" action="../SvEliminarVenta" method="POST" style="display:inline">
                                                        <input type="hidden" name="id" value="<%=idVenta%>" >
                                                        <button type="submit" class="item" data-toggle="tooltip" data-placement="top" title data-original-title="Eliminar"><i class="zmdi zmdi-delete"></i></button>
                                                    </form>
                                                    <div class="pr-3"></div>    
                                                    <form name="frmModificarVenta" action="../SvModificarVenta" method="POST" style="display:inline">
                                                        <input type="hidden" name="id" value="<%=idVenta%>" >
                                                        <button type="submit" class="item" data-toggle="tooltip" data-placement="top" title data-original-title="Editar"><i class="zmdi zmdi-edit"></i></button>
                                                    </form>
                                                </div>

                                            </td>
                                            </tr>
                                            <%}

                                            %>
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
        <%}%>
    </body>
</html>
