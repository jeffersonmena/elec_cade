<?php
session_start();
$nom=$_SESSION['usu'];
if ($nom) {
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
	<body>
		<div class="container" style="margin-top: 100px;">
			<div class="text-center mb-80">
				<h4 class="section-title text-uppercase">
				Papeleta de votación</h4>
				<h5>Bienvenido</h5>
				<h6><?php echo $nom; ?></h6>
				<h6><a href="validar.php?op=exit">exit</a></h6>
				
			</div>
			<div class="row">
				<div class="col s12 m6">
					<div class="card">
						<div class="card-image">
							<img src="img/list_A.png">
							<span class="card-title">Lista A</span>
						</div>
						<div class="card-content">
							<p></p>
						</div>
						<div class="card-action">
							<div class="team-title">
								<h3><a href="#">Jose Cevallos</a></h3>
								<span>Presidente</span>
								<p>. </p>
								<form action="validar.php" method="POST" id="votacion_a">
									<p>
										<label>
											<p>
												<input type="checkbox" class="filled-in" name="list_a" id="list_a" value="A" />
												<label for="list_a">
													<button class="btn waves-effect waves-light" type="submit" id="send_a">votar
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
						<div class="card">
							<div class="card-image">
								<img src="img/allison.png">
								<span class="card-title">Lista B</span>
							</div>
							<div class="card-content">
								<p></p>
							</div>
							<div class="card-action">
								<div class="team-title">
									<h3><a href="#">Allison Zambrano</a></h3>
									<span>Presidente</span>
									<p>. </p>
									<form action="validar.php" method="POST" id="votacion_b">
										<p>
											<label>
												<p>
													<input type="checkbox" class="filled-in" name="list_b" id="list_b"  value="B" />
													<label for="list_b">
														<button class="btn waves-effect waves-light" type="submit" id="send_b">votar
														<i class="material-icons right">send</i>
														</button>
													</label>
												</p>
											</label>
										</p>
									</form>
									</div><!-- /.team-title -->        </div>
								</div>
								
							</div>
						</div>
					</div>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
					<script type="text/javascript">
					$(document).ready(function() {
					list_a();
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
					// $( '#send_a' ).on( 'click', function() {
					// Hacer algo si el checkbox ha sido seleccionado
					// alert("Esta Seguro de su votacion a favor de la Lista A ");
					//});
					function list_a(){
					$( "#votacion_a" ).submit(function( event ) {
					
					var parametros = $(this).serialize();
					$.ajax({
					type: "POST",
					url: "validar.php?op=votacion",
					data: parametros,
					beforeSend: function(objeto){
					$("#mensaje").html("Mensaje: Cargando...");
					},
					success: function(datos){
					$("#mensaje").html(datos);
					}
					});
					event.preventDefault();
					})
					}
					</script>
				</body>
			</html>
			<?php
			}else{
			header("location: index.php");
			}
			?>