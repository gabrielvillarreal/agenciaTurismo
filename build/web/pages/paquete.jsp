<%-- 
    Document   : venta
    Created on : 4 dic. 2021, 20:54:57
    Author     : villa
--%>

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
                                                <a href="../pages/listadoPaquetes.jsp">Paquetes Turisticos</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item active">
                                                <a>Agregar Paquete</a>
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
                <h1 class="text-dark text-capitalize ps-3">Paquete Turistico</h1>
              </div>
            </div>
              <div class="card-body">
                  <div >
                      
                      <form action="agregarServicio" id="formularioServicio">
                          
                      
                        <div class="row form-group">
                            <div class="col-0 ml-3">
                                <label class="form-control-label" for="servicio">Servicio</label>
                            </div>
                            <div class="col-9 col-md-6">
                                <select class="form-control" id="servicio" name="servicio">
                                <%
                                Controladora control = new Controladora();
                                List <Servicio> listaServicio = control.traerServicios();
                                for (Servicio serv : listaServicio) {

                                    String nombre = serv.getNombre(); 
                                    String descripcion = serv.getDescripcion_breve();
                                    String costo =  String.valueOf(serv.getCosto_servicio());
                                    int id = serv.getCodigo_servicio();%>

                                  <option id="<%=id%>" name="<%=costo%>"><%=nombre + " : " + descripcion  %></option>

                                <%}%>
                                </select>
                            </div>
                                <div class="col-3 col-md-3" >
                                <button type="submit" class="btn btn-success ">Agregar Servicio</button>
                            </div>
                        </div>
                      </form>
                               <form name="agregarPaquete" action="../SvPaquete" method="post" style="display:inline" class="text-center">  
                                <div >
                                    <table id="transactionTable" class="table table-hover">
                                        <thead>
                                            <tr class="encabezado">
                                                <th scope="col">Codigo</th>
                                                <th scope="col">tipo</th>
                                                <th scope="col">Descripcion</th>
                                                <th scope="col">Costo</th>
                                                <th scope="col">Eliminar</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr style="display:none">
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>
                                                <td></td>
                                            </tr>
                                            
                                        </tbody>
                                        
                                        
                                            
                                        
                                    </table>
                                    <div class="row align-self-end">
                                        
                                        
                                        <span class=" h2 m-3" >Costo Total: </span>
                                        
                                        <input class=" text-dark  h3 "  type="text" id="totalServicios" name="totalServicios" class="form-control">
                                        
                                    </div>
                                    
                                    <input type="hidden" id="idServicio" name="idServicio" class="form-control">
                                    
                                </div>
                                <br>
                                
                      <button type="submit" class="btn btn-primary ">Aceptar</button>
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
      const form = document.getElementById("formularioServicio");
      
      form.addEventListener("submit", function(event){
          event.preventDefault();
          let transactionFormData  = new FormData(form);
          insertRowInTransactionTable(transactionFormData);
          
      })
      
      function insertRowInTransactionTable(transactionFormData){
          let transactionTableRef = document.getElementById("transactionTable");
          let newTransactionRowRef= transactionTableRef.insertRow(-1);
          
          let newTypeCellRef = newTransactionRowRef.insertCell(0);
          newTypeCellRef.textContent = document.getElementById("servicio").selectedOptions[0].attributes.id.value;
          const texto = document.getElementById("servicio").value;
          const datos = texto.split(':');
          
          
          newTypeCellRef = newTransactionRowRef.insertCell(1);
          newTypeCellRef.textContent = datos[0];
         
          
          newTypeCellRef = newTransactionRowRef.insertCell(2);
          newTypeCellRef.textContent = datos[1];
          newTypeCellRef = newTransactionRowRef.insertCell(3);
          newTypeCellRef.textContent = document.getElementById("servicio").selectedOptions[0].attributes.name.value;
          
          let newDeleteCell = newTransactionRowRef.insertCell(4);
          let deleteButton = document.createElement("button");
          deleteButton.textContent = "Eliminar";
          deleteButton.setAttribute("class","btn btn-danger");
          newDeleteCell.appendChild (deleteButton);
          deleteButton.addEventListener("click", (event) =>{
              event.target.parentNode.parentNode.remove();
              calcularTotal();
              
              
          });
          calcularTotal();
        
          
      }
     
      function calcularTotal(borrar){
          //Ejecuto la función al cargar la página
        $(document).ready(function()
        {
          //Defino los totales de mis 2 columnas en 0
          var total_col1 = 0;
          const idServicio = [];
          
          //Recorro todos los tr ubicados en el tbody
          $('#transactionTable tbody') .find('tr').each(function (i, el) {

                //Voy incrementando las variables segun la fila ( .eq(0) representa la fila 1 )     
                total_col1 += parseFloat($(this).find('td').eq(3).text());
                idServicio.push(parseInt($(this).find('td').eq(0).text()));
                

            });
            idServicio.shift();
            //le aplico el 10% de descuento
            total_col1 = total_col1 - ((total_col1*10)/100);
            //Muestro el resultado en el th correspondiente a la columna
            $('#totalServicios').val(total_col1);
            $('#idServicio').val(idServicio);
            

        });
      }
      
  </script>
  
 <%}%>
</body>

</html>