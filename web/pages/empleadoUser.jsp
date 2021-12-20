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
<body class="animsition ">
    
        
    
         
    <div class="container ">
      <div class="row">
        <div class="col ">
          <div class="card my-4">
            <div class="card-header">
              <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                <h1 class="text-dark text-capitalize ps-3">Empleado</h1>
              </div>
            </div>
              <div class="card-body">
                  <form action="../SvEmpleado" method="POST" >
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
                              <input type="tel" id="celular" name="celular" class="form-control">
                            </div>
                            <div class="form-group col-md-4">
                              <label for="email" class="pr-1  form-control-label">E-mail</label>
                              <input type="email" id="email" name="email" class="form-control">
                            </div>
                      </div>
                      <div class="form-row">
                          <div class="form-group col-md-6">
                              <label for="cargo" class="pr-1  form-control-label">Cargo</label>
                              <input type="text" id="cargo" name="cargo" class="form-control">
                          </div>
                          <div class="form-group col-md-6">
                              <label for="sueldo" class="pr-1  form-control-label">Sueldo</label>
                              <input type="text" id="sueldo" name="sueldo" class="form-control">
                          </div>
                      </div>
                      <div class="form-row">
                          <div class="form-group col-md-6">
                              <label for="usuario" class="pr-1  form-control-label">usuario</label>
                              <input type="text" id="usuario" name="usuario" class="form-control">
                          </div>
                          <div class="form-group col-md-6">
                              <label for="password" class="pr-1  form-control-label">Password</label>
                              <input type="password" id="password" name="password" class="form-control">
                          </div>  
                      </div> 
                    
                      
                    
                    
                    <div class="text-center">
                      <button type="submit" class="btn btn-primary ">Aceptar</button>
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

</body>

</html>