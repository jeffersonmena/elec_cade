<?php 
imclude	
$op=$_POST['op']
$ci=$_POST['']

$sql=mysqli_query($con,"SELECT * FROM estudiante WHERE cedula='$ci'");


if ($sql) {
	$_SESSION['usu']=$ci;
}

?>