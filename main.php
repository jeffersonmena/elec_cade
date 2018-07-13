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
        <div class="card-action">              
          <form action="validar.php" id="salir" method="POST" >
            <input type="hidden"  name="op" value="exit"  >
            <input type="hidden" name="codigo_e" value="<?php echo $code; ?>">
            <button type="submit" class="waves-effect waves-light btn" >
              EXIT
            </button>
           </form>
        </div>
               
        </h6>
        
      </div>

      <div class="row">
        <div class="col s12 m6">
          <div class="card #b2ff59 light-green accent-2">
            <div class="card-image">
              <img src="img/list_A.png">
              <span class="card-title">Lista A</span>
            </div>
            <div class="card-content">              
            <h3><a href="#">Jose Cevallos</a></h3>   
            <span>PRESIDENTE</span>                    
            </div>
            <div class="card-action">
              <div class="team-title">
                <form  action="validar.php" method="POST"   id="votacion_a">
                  <p>
                    <label>
                      <p>
                        <input type="hidden" class="filled-in" name="op" value="votacion" />
                        <input type="hidden" name="cod" value="<?php echo $code; ?>">
                        <input type="checkbox" class="filled-in" name="list" id="list_a" value="A" />
                        <label for="list_a">
                          <button class="btn waves-effect waves-light"  type="submit" id="send_a">votar
                          <i class="material-icons right">send</i>
                          </button>
                        </label>
                      </p>
                    </label>
                  </p>
                </form>
                </div><!-- /.team-title -->
              </div>
            </div>
          </div>
          <div class="col s12 m6">
            <div class="card #f44336 red">
              <div class="card-image">
                <img src="img/allison.png">
                <span class="card-title">Lista B</span>
              </div>
              <div class="card-content">
                <h3><a >Allison Zambrano</a></h3>
                <span>PRESIDENTA</span>
              </div>
              <div class="card-action">
                <div class="team-title">
                  <form action="validar.php" method="POST"  id="votacion_b">
                    <p>
                      <label>
                        <p>
                          <input type="hidden" class="filled-in" name="op" id="op"  value="votacion" />
                          <input type="hidden" name="cod" value="<?php echo $code; ?>">
                          <input type="checkbox" class="filled-in" name="list" id="list_b"  value="B" />
                          <label for="list_b">
                            <button class="btn waves-effect waves-light" type="submit" id="send_b">votar
                            <i class="material-icons right">send</i>
                            </button>
                          </label>
                        </p>
                      </label>
                    </p>
                  </form>
                  </div><!-- /.team-title -->
                </div>
              </div>
            </div>
          </div>
        </div>
          
        <script src="assets/jquery-3.2.1.min.js" ></script>
        <script >
          $(document).on("ready", function(){
            list_a();
            list_b();
            salir();
          });
            $( '#list_a' ).on( 'click', function() {
              if ($('#list_a').is(':checked') ) {
                  $('#list_b').attr("disabled", true);
                  $('#send_b').attr("disabled", true);
              }else{
                  $('#list_b').attr("disabled", false);
                  $('#send_b').attr("disabled", false);
              }
            });
            $( '#list_b' ).on( 'click', function() {
              if ($('#list_b').is(':checked') ) {
                  $('#list_a').attr("disabled", true);
                  $('#send_a').attr("disabled", true);
              }else{
                  $('#list_a').attr("disabled", false);
                  $('#send_a').attr("disabled", false);
              }
            }); 
        var salir = function (){ 
        $( "#salir" ).submit(function( event ) {        
        var parametros = $(this).serialize();
           $.ajax({
              type: "POST",
              url: "validar.php",
              data: parametros, 
          });    
          event.preventDefault();
        });    
        }              
        var list_a = function (){ 
        $( "#votacion_a" ).submit(function( event ) {
        if ($('#list_a').is(':checked') ) {
        var parametros = $(this).serialize();
       $.ajax({
          type: "POST",
          url: "validar.php",
          data: parametros, 
      });    
       event.preventDefault();
     }
    });    
    }                
        function list_b(){
        $( "#votacion_b" ).submit(function( event ) {
          if ($('#list_b').is(':checked') ) {
        var parametros = $(this).serialize();
        $.ajax({
        type: "POST",
        url: "validar.php",
        data: parametros,
        });              
        event.preventDefault();
      }
        });        
        }
        </script>
      </body>
    </html>
    <?php
    }else{
    header("location: index.php");
    }
    ?>