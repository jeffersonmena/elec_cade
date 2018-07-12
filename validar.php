<?php 
include 'conexion.php';
if($_POST){
	$op=$_POST['op'];
	$co=$_POST['code'];
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
		$sql=mysqli_query($con,"SELECT * FROM votos WHERE");
		break;
	case 'exit':
				session_start();
				session_destroy();
				header("location: index.php");
		break;		
}
?>