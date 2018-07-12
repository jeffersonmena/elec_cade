<?php 
include 'conexion.php';
if($_POST){
	$op=$_POST['op'];
	$co=$_POST['code'];
	$list=$_POST['list'];
}else{
	$op=$_GET['op'];
}
switch ($op) {
	case 'ingresar':			
			$sql=mysqli_query($con,"SELECT * FROM estudiantes WHERE codigo='$co'");
			$row=mysqli_fetch_assoc($sql); 
				$nom=$row['estudiante'];
			if ($sql) {
				session_start();
				$_SESSION['usu']=$nom;
				header("location: main.php");
			}else{
				header("lacation: index.php");
			}		
		break;
	
	case 'votacion':
		//$sql=mysqli_query($con,"SELECT * FROM votos WHERE");
		$sql=mysqli_query($con,"INSERT INTO votos (voto)values('$list')");
		if ($sql) {
			$messages[]= "Se registro correctamente";
		}else{
			$errors[]="Paso algo Inesperado llama a tu asesor";
		}
		break;
	case 'exit':
				session_start();
				session_destroy();
				header("location: index.php");
		break;		
}

if (isset($errors)){
?>			
	<div class="alert alert-danger" role="alert">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
			<strong>Error!</strong> 
			<?php
				foreach ($errors as $error) {
						echo $error;
					}
				?>
	</div>
	<?php
	}
	if (isset($messages)){
		
		?>
		<div class="alert alert-success" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>¡Bien hecho!</strong>
				<?php
					foreach ($messages as $message) {
							echo $message;
						}
					?>
		</div>
		<?php
	}
?>