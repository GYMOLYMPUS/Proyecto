<?php
 include("conexion.php");
 $id=$_POST["id"];
 $nombre=$_POST["nombre"];
 $apellido=$_POST["apellido"];
 $telefono=$_POST["telefono"];
 $correo=$_POST["correo"];
 $estado=$_POST["estado"];
 mysqli_query($conexion,"insert into usuario(id,nombre,apellido,telefono,correo,estado)values($id,'$nombre','$apellido',$telefono,'$correo','$estado')")or die("problemas al insertar".mysqli_error($conexion));
 echo "<br>USUARIO REGISTRADO EXITOSAMENTE";

?>
<BR></BR>
<div class="d-grid gap-2">
  <a href="index.html"><button class="btn btn-primary" type="button"> CONTINUAR </button></a>
  <br></br>
