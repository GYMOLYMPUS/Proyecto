<!DOCTYPE html>
<html>
<head>
	<title>🔱LISTA USUARIOS🔱</title>

     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/aos.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/tooplate-gymso-style.css">
<!--
Tooplate 2119 Gymso Fitness
https://www.tooplate.com/view/2119-gymso-fitness
-->
</head>
<body>
 <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">

            <a class="navbar-brand" href="index.html">GYM OLYMPUS</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <a href="#home" class="nav-link smoothScroll">Home</a>
                    </li>

                    <li class="nav-item">
                        <a href="#about" class="nav-link smoothScroll">About Us</a>
                    </li>

                    <li class="nav-item">
                        <a href="#class" class="nav-link smoothScroll">Classes</a>
                    </li>

                    <li class="nav-item">
                        <a href="#schedule" class="nav-link smoothScroll">Schedules</a>
                    </li>

                    <li class="nav-item">
                        <a href="#contact" class="nav-link smoothScroll">CONTACTANOS</a>
                    </li>
                        <li class="nav-item">
                        <a href="admin.php" class="nav-link smoothScroll">REGISTRAR</a>
                    </li>
                </ul>

                <ul class="social-icon ml-lg-3">
                    <li><a href="https://fb.com/tooplate" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter"></a></li>
                    <li><a href="#" class="fa fa-instagram"></a></li>
                </ul>
            </div>

        </div>
    </nav>
  
    <br>
    <br>
    <br>
    <div class="input-group">
  <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" style=" border-color:black; color:black" />
  <button style="background-color:black; border-color:black; color:white" type="button" class="btn btn-outline-primary">search</button>
</div>
<br>
<center>
<?php
include("conexion.php");
$result=mysqli_query($conexion,"select * from usuario;")or die("Problemas en el select".mysqli_error($conexion));
echo "<table border ='1'>";
echo "<tr><td>CEDULA</td><td>NOMBRE</td><td>APELLIDO</td><td>TELEFONO</td><td>CORREO</td><td>ESTADO</td><td>MODIFICAR</td></tr>";
while($row=mysqli_fetch_array($result)){
	echo "<tr><td>".$row['id']."</td><td>".$row['nombre']."</td><td>".$row['apellido']."</td><td>".$row['telefono']."</td><td>".$row['correo']."</td><td>".$row['estado']."</td><td><a href='modificarusuario.php?code=$row[id]'>Modificar</a></td></tr>";
}
echo "</table>";
?>
</center>
<BR></BR>
<div class="d-grid gap-2">
  <a href="admin.php"><button style="background-color:black; border-color:black; color:white" class="btn btn-primary" type="button"> VOLVER </button></a>
  <br></br>
</div>
</body>
</html>