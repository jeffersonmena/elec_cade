<?php 
include 'conexion.php';
	$opcion=$_POST['op']; 
switch ($opcion) {
	case 'ingresar':
		$co=$_POST['code']; 
		$codigo=mysqli_real_escape_string($con,(strip_tags($co,ENT_QUOTES)));
		if(empty($codigo)){
			$errors[]="codigo vacío";
		}else if( !empty($codigo)){
			$sql=mysqli_query($con,"SELECT * FROM estudiantes WHERE codigo='$codigo'");
				$row=mysqli_fetch_assoc($sql); 
				$nom=$row['estudiante'];
				$code=$row['codigo'];			
			if ( $sql ) {
				session_start();
				$_SESSION['usu']=$nom;
				$_SESSION['cod']=$code;
				header("location: main.php");
			}else{		
				header("lacation: index.php");
				}
			}else{
			$errors[]="Error desconocido: COMUNIQUESE CON EL ADMINISTRADOR";
		}								

		break;
	case 'votacion':	
		$list=$_POST['list'];
		$estudiante=$_POST['cod'];
$cod_estudiante=mysqli_real_escape_string($con,(strip_tags($estudiante,ENT_QUOTES)));
		if(empty($cod_estudiante)){
			$errors[]="codigo vacío";
		}else if( !empty($cod_estudiante)){
			$existe_voto=mysqli_query($con,"SELECT cod_estudiante FROM votos WHERE cod_estudiante='$cod_estudiante'");
			$si_existe=mysqli_num_rows($existe_voto);
			if ( $si_existe > 0 ) {
				$errors[]="El estudiante ya participo de las votaciones";
				//header("location: main.php");
			}else{		
				$test_insert = mysqli_query($con,"INSERT INTO votos (cod_estudiante,voto)values('$cod_estudiante','$list')");
				if (!empty($test_insert)){
						echo "scriptHas votado por la lista: <<.$list >>";
					}else{
						$errors []= "Lo siento algo ha salido mal intenta nuevamente.".mysqli_error($con);
					}
				}
			}else{
			$errors[]="Error desconocido: COMUNIQUESE CON EL ADMINISTRADOR";
		}								

		break;
	case 'exit':
			session_start();
			session_destroy();
			header("location: index.php");
			break;	
	default:
		$errors[]="Opcion(Accion a ejecutar) vacio(editar-eliminar-guardar)";
		break;
}

if(isset($errors)){
	foreach ($errors as $error) {
		header("location: main.php?data=$error");
	}

}
if (isset($messages)){
	foreach ($messages as $message) {
		header("location: main.php?data=$message");
	}
}

?>


