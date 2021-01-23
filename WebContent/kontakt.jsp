<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Prime - Kontakt</title>
  <meta name="description" content=".....">
  <meta name="keywords" content=".....">
  <meta name="author" content="Aleksandar Vilus | aleksandar.vilus.it.obuka@gmail.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="robots" content="index">
  <link rel="icon" href="http://primetimewatches.net/media/favicon/default/favicon.ico" type="image/x-icon">

  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/all.min.css" rel="stylesheet">
  <link href="css/mojstil.css" rel="stylesheet">
  <link href="css/kontakt.css" rel="stylesheet">


</head>

<body>
  <!-- POČETAK OMOTAČA -->
  <div class="container">

    <!-- POČETAK HEDER-A -->
    <div class="page-header">
      <img src="images/primetime/primetime-head-inv.png">
    </div>

    <!-- KRAJ HEDER-A -->

    <!-- OVO JE POCETAK NAVIGACIJE -->
    <nav class="navbar navbar-default" data-spy="affix">
      <!--afix FIKSIRANJE NAVIGACIJE-->
      <h2>Glavna navigacija</h2>
      <div class="container-fluid">

        <!-- POČETAK DELA KOJI KREIRA BURGER -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">
            PRIME
          </a>
        </div>
        <!-- KRAJ DELA KOJI KREIRA BURGER -->

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">

            <!-- POČETAK PADAJUĆEG MENIJA -->
            <li class="dropdown">
              <a href="galerija.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">BRENDOVI <span class="caret"></span></a>
              <ul class="dropdown-menu">
        <!--         <li><a href="haemmer.html">HAEMMER</a></li>

                <li><a href="welder.html">WELDER</a></li>

                <li><a href="uboat.html">U-BOAT</a></li> -->
              </ul>
            </li>
            <!-- KRAJ PADAJUĆEG MENIJA -->

            <li><a href="webshop.jsp">PRODAVNICA</a></li>
            <li><a href="onama.html">O NAMA / KONTAKT</a></li>
            <li><a href="kontakt.jsp">LOGIN</a></li>

        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
    <!-- KRAJ NAVIGACIJE -->

    <!-- POČETAK NASLOVA STRANE -->
    <div class="page-header">
      <h1><em>KONTAKT PRIJAVA</em></h1>

      <!-- KRAJ NASLOVA STRANE -->

      <!-- POČETAK BOKSEVA -->
      <div class="row">
        <div class="col-md-1">
        </div>

        <div class="row">
          <div class="col-md-10">
            <!-- POČETAK LEVOG BOKSA -->
            <div class="col-md-6">
              <div class="jumbotron">

                <h2>Registrujte se</h2>
                <form class="formular" name="formular" method="post" action="ServletLOgin">
                  <!--  za online u action dodati kontakt.php -->

                  <label for="ime">Ime</label>
                  <input type="text" id="ime" name="ime" placeholder="Unesite vaše ime">

                  <label for="prezime">Prezime</label>
                  <input type="text" id="prezime" name="prezime" placeholder="Unesite vaše prezime">

                  <label for="email">E-mail adresa</label>
                  <input type="text" id="email" name="email" placeholder="Unesite vašu e-mail adresu">

                  <label for="telefon">Telefon</label>
                  <input type="text" id="telefon" name="telefon" placeholder="Unesite vaš broj telefona">

                  

                  <label for="password">Password</label>
                  <input type="text" id="password" name="password" placeholder="Unesite password">


                  <label for="password1">Potvrda passworda</label>
                  <input type="text" id="password1" name="password1" placeholder="Potvrdite password">


                  <input type="button" value="POŠALJI"/><!--  onclick="proveri()" -->>
                </form>


              </div>

            </div>
            <!-- KRAJ LEVOG BOKSA -->


            <!-- POČETAK DESNOG BOKSA -->
            <div class="col-md-6">
              <div class="jumbotron">


                <h2>Prijavite se</h2>
                <form class="formular"  name="Login" method="post" action="ServletLOgin">

                  <label for="email2">User</label>
                  <input type="text" id="email2" name="user" placeholder="Unesite vašu e-mail adresu">




                  <label for="password2">Password</label>
                  <input type="text" id="password2" name="pass" placeholder="Unesite password">


               <input type="submit" name="submit" value="Login"><!-- onclick="proveri2()" -->
                </form>

              </div>
            </div>
            <!-- KRAJ DESNOG BOKSA -->
          </div>
        </div>
      </div>
      <!-- KRAJ BOKSEVA -->
    </div>


    <!-- POČETAK FOOTER-A -->
    <footer>
      <div class="row">

        <div class="col-md-12">

          <ul id="SoNet" class="list-inline">
            <li><a href="http://facebook.com/"><i class="fab fa-facebook-f fa-3x"></i></a></li>
            <li><a href="http://instagram.com/"><i class="fab fa-instagram fa-3x"></i></a></li>
            <li><a href="http://twitter.com/"><i class="fab fa-twitter fa-3x"></i></a></li>
          </ul>
        </div>
      </div>
      <!-- kraj gornjeg dela footer-a -->
      <!-- donji deo footer-a -->
      <div class="panel-footer">
        <div class="row">

          <div class="col-md-12">
            <p class="text-right">Copyright &copy; 2019 Aleksandar Vilus &#64; CODE</p>
          </div>
        </div>
      </div>
      <!-- kraj donjeg dela footer-a -->
    </footer>
    <!-- KRAJ FOOTER-A -->
  </div>
  <!-- KRAJ OMOTAČA -->


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/mojjs.js"></script>
  <script src="js/kontakt.js"></script>

</body>

</html>