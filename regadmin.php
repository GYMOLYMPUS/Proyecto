<?php
 include("conexion.php");
 $id=$_POST["id"];
 $nombre=$_POST["nombre"];
 $apellido=$_POST["apellido"];
 $telefono=$_POST["telefono"];
 $estado=$_POST["estado"];
 mysqli_query($conexion,"insert into admin(id,nombre,apellido,telefono,estado)values($id,'$nombre','$apellido',$telefono,'$estado')")or die("problemas al insertar".mysqli_error($conexion));
 echo "<br>ADMINISTRADOR REGISTRADO EXITOSAMENTE";


?>
<BR></BR>
<div class="d-grid gap-2">
  <a href="admin.html"><button class="btn btn-primary" type="button"> CONTINUAR </button></a>
  <br></br>