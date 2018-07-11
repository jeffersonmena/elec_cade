<?php 

?>
<!DOCTYPE html>
<html>
<head>
	<title>login</title>
	<?php include 'includes/link.html'; ?>
</head>
<body>
<div class="container">
  <div class="card">
    <div class="card-content">
      <div class="row">
        <div class="col s12 m4 l2">
          <img class="activator" src="img/logo_edu.png" width="80">
        </div>
        <div class="col s12 m4 l8">
          <span class="card-title activator grey-text text-darken-4 center">UNIDAD EDUCATIVA "ADVENTISTA DEL ECUADOR"</span>
          <span class="card-title activator grey-text text-darken-4 center">ELECCIONES 2018 </span>
        </div>
      </div>        
        <div class="row">
          <form>
            <div class="col s12 m4 l8">
                <div class="input-field ">
                  <i class="material-icons prefix">account_circle</i>
                  <input id="icon_prefix" type="text" class="validate">
                  <label for="icon_prefix">Cedula</label>
                </div>              
            </div>
            <div class="col s12 m4 l2">
              <button class="btn waves-effect waves-light" type="submit" name="action">ingresar
                <i class="material-icons right">send</i>
              </button>
            </div>
          </form>         
        </div>
    </div>
  </div> 
</div>
</body>
</html>