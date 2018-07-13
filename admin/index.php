<?php 
    include '../conexion.php'
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="msapplication-tap-highlight" content="no">
  <meta name="description" content="ELECCIONES CADE ">
  <meta name="keywords" content="ELECCIONES">
  <meta http-equiv="refresh" content="1">
  <title>CADE Elige</title>
  <?php include('includes/links.php'); ?>
</head>
<body>
    <?php include('includes/header.php'); ?>
  <div id="main">
    <div class="wrapper">
      <?php include('includes/aside.php'); ?>
      <section id="content">
        <div id="breadcrumbs-wrapper">
            <div class="header-search-wrapper grey hide-on-large-only">
                <i class="mdi-action-search active"></i>
                <input type="text" name="Search" class="header-search-input z-depth-2" placeholder="Filtrar Resultados">
            </div>
          <div class="container">
            <div class="row">
              <div class="col s12 m12 l12">
                <h5 class="breadcrumbs-title">Elecciones</h5>
                <ol class="breadcrumbs">
                    <li><a href="index.php">Resultados</a></li>
                    <li><a href="#">Pages</a></li>
                    <li class="active"></li>
                </ol>
              </div>
            </div>
          </div>
        </div>
                    <div id="card-stats">
                        <div class="row">
                            <div class="col s12 m6 l3">
                                <div class="card">
                                    <div class="card-content blue-grey white-text">
                                        <p class="card-stats-title"><i class="mdi-social-group-add"></i> 
                                          Total Estudiantes                                          
                                        </p>
                                        <h4 class="card-stats-number"> 
                                        <?php 
                                           $cant_stud=mysqli_query($con,"SELECT id_estudiante FROM estudiantes ");
                                            $cant_studs=mysqli_num_rows($cant_stud);
                                           echo $cant_studs;
                                         ?>                                                                                 
                                        </h4>
                                        <p class="card-stats-compare"><i class="mdi-hardware-keyboard-arrow-up"></i> 0% <span class="blue-grey-text text-lighten-5">from TODAY</span>
                                        </p>
                                    </div>
                                    <div class="card-action blue-grey darken-2">
                                        <div id="profit-tristate" class="center-align"><canvas width="227" height="25" style="display: inline-block; width: 227px; height: 25px; vertical-align: top;"></canvas></div>
                                    </div>
                                </div>
                            </div>                          
                            <div class="col s12 m6 l3">
                                <div class="card">
                                    <div class="card-content  green white-text">
                                        <p class="card-stats-title"><i class="mdi-editor-insert-drive-file"></i>
                                        LISTA " A "</p>
                                        <h4 class="card-stats-number">
                                          <?php 
                                           $cant_stud=mysqli_query($con,"SELECT voto, COUNT(*)as num FROM votos WHERE voto='A'");
                                            $cont=mysqli_fetch_assoc($cant_stud);
                                           echo $Total=$cont['num'];
                                         ?>                                          
                                         </h4>
                                        <p class="card-stats-compare"><i class="mdi-hardware-keyboard-arrow-up"></i> 100% <span class="green-text text-lighten-5">from TODAY</span>
                                        </p>
                                    </div>
                                    <div class="card-action  green darken-2">
                                        <div id="clients-bar" class="center-align"><canvas width="227" height="25" style="display: inline-block; width: 227px; height: 25px; vertical-align: top;"></canvas></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col s12 m6 l3">
                                <div class="card">
                                    <div class="card-content pink lighten-1 white-text">
                                        <p class="card-stats-title"><i class="mdi-editor-insert-drive-file"></i> 
                                          LISTA " B "
                                        </p>
                                        <h4 class="card-stats-number">
                                          <?php 
                                           $cant_stud=mysqli_query($con,"SELECT voto, COUNT(*)as num FROM votos WHERE voto='B'");
                                            $cont=mysqli_fetch_assoc($cant_stud);
                                           echo $Total=$cont['num'];
                                         ?> 
                                        </h4>
                                        <p class="card-stats-compare"><i class="mdi-hardware-keyboard-arrow-down"></i> 0% <span class="deep-purple-text text-lighten-5">from TODAY</span>
                                        </p>
                                    </div>
                                    <div class="card-action  pink darken-2">
                                        <div id="invoice-line" class="center-align"><canvas width="223" height="25" style="display: inline-block; width: 223px; height: 25px; vertical-align: top;"></canvas></div>
                                    </div>
                                </div>
                            </div>

                            <div class="col s12 m6 l3">
                                <div class="card">
                                    <div class="card-content purple white-text">
                                        <p class="card-stats-title"><i class="mdi-editor-insert-drive-file"></i>Total VOTOS</p>
                                        <h4 class="card-stats-number">
                                          <?php 
                                           $cant_stud=mysqli_query($con,"SELECT COUNT(*)as num FROM votos ");
                                            $cont=mysqli_fetch_assoc($cant_stud);
                                           echo $Total=$cont['num'];
                                         ?>                                          
                                        </h4>
                                        <p class="card-stats-compare"><i class="mdi-hardware-keyboard-arrow-up"></i> 0% <span class="purple-text text-lighten-5">from TODAY</span>
                                        </p>
                                    </div>
                                    <div class="card-action purple darken-2">
                                        <div id="sales-compositebar" class="center-align"><canvas width="214" height="25" style="display: inline-block; width: 214px; height: 25px; vertical-align: top;"></canvas></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      <div class="row">
                            <div class="col s12 m6 l3">
                                <div class="card">
                                    <div class="card-content #0288d1 light-blue darken-2 white-text">
                                        <p class="card-stats-title"><i class="mdi-editor-insert-drive-file"></i> Estudiantes Restantes</p>
                                        <h4 class="card-stats-number">
                                          <?php 
                                           $cant_s=mysqli_query($con,"SELECT id_estudiante FROM estudiantes ");
                                           $cant_1=mysqli_num_rows($cant_s);
                                           $cant_v=mysqli_query($con,"SELECT id_voto FROM votos ");
                                           $cant_2=mysqli_num_rows($cant_v);
                                           $faltantes=$cant_1-$cant_2;
                                          echo $faltantes;

                                         ?>  
                                        </h4>
                                        <p class="card-stats-compare"><i class="mdi-hardware-keyboard-arrow-down"></i> 0% <span class="deep-purple-text text-lighten-5">from TODAY</span>
                                        </p>
                                    </div>
                                    <div class="card-action  #0277bd light-blue darken-3 darken-2">
                                        <div id="invoice-line" class="center-align"><canvas width="223" height="25" style="display: inline-block; width: 223px; height: 25px; vertical-align: top;"></canvas></div>
                                    </div>
                                </div>
                            </div> 
                            <div class="col s12 m6 l3">
                                <div class="card">
                                    <div class="card-content #0288d1 light-blue darken-2 white-text">
                                        <p class="card-stats-title"><i class="mdi-editor-insert-drive-file"></i> Fecha y hora actual</p>
                                        <h4 class="card-stats-number">
                                          <?php 
                                            echo  date("d") . " / " . date("m") . " / " . date("y")." " ;
                                            /*date("a");
date("A");
date("g");
date("h");
date("G");
date("H");
*/
                                         ?>  
                                        </h4>
                                        <p class="card-stats-compare"><i class="mdi-hardware-keyboard-arrow-down"></i> 0% <span class="deep-purple-text text-lighten-5">from TODAY</span>
                                        </p>
                                    </div>
                                    <div class="card-action  #0277bd light-blue darken-3 darken-2">
                                        <div id="invoice-line" class="center-align"><canvas width="223" height="25" style="display: inline-block; width: 223px; height: 25px; vertical-align: top;"></canvas></div>
                                    </div>
                                </div>
                            </div>                                                    
                      </div>                        
                    </div>




        <div class="container">
          <div class="section">
            <p class="caption"></p>
            <div class="divider"></div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
          </div>
            <div class="fixed-action-btn" style="bottom: 50px; right: 19px;">
                <a class="btn-floating btn-large">
                  <i class="mdi-action-stars"></i>
                </a>
                <ul>
                  <li><a href="css-helpers.html" class="btn-floating red"><i class="large mdi-communication-live-help"></i></a></li>
                  <li><a href="app-widget.html" class="btn-floating yellow darken-1"><i class="large mdi-device-now-widgets"></i></a></li>
                  <li><a href="app-calendar.html" class="btn-floating green"><i class="large mdi-editor-insert-invitation"></i></a></li>
                  <li><a href="app-email.html" class="btn-floating blue"><i class="large mdi-communication-email"></i></a></li>
                </ul>
            </div>
        </div>
      </section>
        <?php include('includes/right_sidebar.php'); ?>
    </div>
  </div>
  <footer class="page-footer" style="background-color: #1ba0b1;">
    <div class="footer-copyright">
      <div class="container">
        <span>Copyright © 2018<a class="grey-text text-lighten-4" href="#" target="_blank"> SAE ECUADOR</a> All rights reserved.</span>
        <span class="right"> Design and Developed by <a class="grey-text text-lighten-4" href="http://geekslabs.com/">SAE ECUADOR</a></span>
        </div>
    </div>
  </footer>
    <script type="text/javascript" src="js/plugins/jquery-1.11.2.min.js"></script>    
    <script type="text/javascript" src="js/materialize.js"></script>
    <script type="text/javascript" src="js/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script type="text/javascript" src="js/plugins/chartist-js/chartist.min.js"></script>   
    <script type="text/javascript" src="js/plugins.js"></script>
    <script type="text/javascript" src="js/custom-script.js"></script>
</body>
</html>