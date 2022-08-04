<?php
 include("conexion.php");
 session_start();
$id=$_SESSION['id'];
?>

<!DOCTYPE html>
<html>
<head>
	  <title>🔱ADMIN🔱</title>

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
</head>
<body>
  <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">

            <a class="navbar-brand" href="index.html">🔱GYM OLYMPUS🔱</a>

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
                        <a href="#class" class="nav-link smoothScroll">Classes</a>
                    </li>

                    <li class="nav-item">
                        <a href="#schedule" class="nav-link smoothScroll">Schedules</a>
                    </li>

                    <li class="nav-item">
                        <a href="#contact" class="nav-link smoothScroll"><td><?php echo  $id;?></td></a>
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

    
	<center>
    <BR>SELECCIONE LA ACCION QUE DESEA REALIZAR:</BR>
    <BR></BR>
<div class="d-grid gap-2">
  <a href="frmus.html"><button style="background-color:black; border-color:black; color:white" class="btn btn-primary" type="button"> REGISTRAR USUARIO </button></a>
  <br></br>
   <a href="frmad.html"><button style="background-color:black; border-color:black; color:white" class="btn btn-primary" type="button"> REGISTRAR ADMINISTRADOR </button></a>
   <br></br>
   <a href="listarusuario.php"><button style="background-color:black; border-color:black; color:white" class="btn btn-primary" type="button"> LISTA USUARIOS </button></a>
    <br></br>
    <a href="listaradmin.php"><button style="background-color:black; border-color:black; color:white" class="btn btn-primary" type="button"> LISTA ADMINISTRADORES </button></a>
     <br></br>
</div>
</center>
</body>
</html>