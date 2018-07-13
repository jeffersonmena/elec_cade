<?php
session_start();
        $nom=$_SESSION['usu'];
        $code=$_SESSION['cod'];
if ($nom && $code ) {

?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Elecciones 2018 CADE</title>
    <link rel="stylesheet" href="">
    <?php include('includes/link.html'); ?>
  </head>
  <body background="img/back.jpg">
    <div class="container" style="margin-top: 100px;">
      <div class="text-center mb-80">
        <h4 class="section-title text-uppercase white-text">
        UNIDAD EDUCATIVA "ADVENTISTA DEL ECUADOR"</h4>
        <h4 class="section-title text-uppercase white-text">
        Papeleta de votación</h4>
        <h5>Bienvenido</h5>
        <h6><?php echo $nom." ".$code  ; ?></h6>
        <h6>

           <div id="mensaje">
            <?php 
            if (isset($_GET['data'])) {
              $mensaje=$_GET['data'];
              ?>
                <div class="row ">
                      <div class="col s12 m6 l12">
                        <div class="card  blue darken-1">
                          <div class="card-content black-text">
                            <span class="card-title "><h4>Notificacion</h4></span>
                            <h4><a style="color:white;"><?php echo $mensaje; ?></a></h4>
                          </div>
                          <div class="card-action">              
                             <a href="main.php">	
                                <input class="waves-effect waves-light btn" type="submit"  value="ok" >
                             </a>   
                          </div>
                        </div>
                      </div>
                    </div>                         
          <?php   
              }
            ?>
          </div>                
        </h6>
        
      </div>
       </body>
    </html>
    <?php
    }else{
    header("location: index.php");
    }
    ?>