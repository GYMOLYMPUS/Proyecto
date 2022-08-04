<?php
 include("conexion.php");
 $id=$_GET["id"];
$resp = mysqli_query($conexion,"SELECT * FROM usuario WHERE id=$id")or die("problemas en el select".mysqli_error($conexion));

if(mysqli_num_rows($resp)>0)
{
	session_start();
	$_SESSION['nombre']=$nombre;
	$_SESSION['apellido']=$apellido;
	$_SESSION['id']=$id;
	header("location: pagus.php");

	exit();
}else{
	header("location:index.html");
}
?>