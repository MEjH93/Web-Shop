<%@page import="dao.impl.DaoProductAll"%>
<%@page import="domen.Artikal"%>
<%@page import="domen.Kategorije"%>
<%@page import="java.util.List"%>
<%@page import="dao.impl.DaoKategroijeImpl"%>
<%@page import="dao.DaoKategorije"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Prime - Webshop</title>
  <meta name="description" content=".....">
  <meta name="keywords" content=".....">
  <meta name="author" content="Aleksandar Vilus | aleksandar.vilus.it.obuka@gmail.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="robots" content="index">
  <link rel="icon" href="http://primetimewatches.net/media/favicon/default/favicon.ico" type="image/x-icon">

  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/all.min.css" rel="stylesheet">
  <link href="css/mojstil.css" rel="stylesheet">

  <link href="css/mojstil_galerija.css" rel="stylesheet">
  </head>
<body>
<form action="ServletKorpa" method="post">
	<input type="hidden" id="idartikla1"name ="idartikla">
	<input type="hidden" id= "kolicina1" name ="kolicina">
  <% 
DaoKategorije dk = new DaoKategroijeImpl();
List<Kategorije>listKategorija = dk.vratiKategorije();

List<Artikal>list =(List<Artikal>) request.getAttribute("list"); 

DaoProductAll dp = new DaoProductAll();
List<Artikal>listArtikala = dp.list();
%>
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
              
                 <%for(Kategorije k: listKategorija){ %>
              		<li><a href="/CetvrtiProjekatSesijeNastvak/ServletKategorijePrikaz?id=<%=k.getId()%>"><%=k.getNaziv() %></a></li>
              <%} %>
              </ul>
            </li>
            <!-- KRAJ PADAJUĆEG MENIJA -->

            <li><a href="webshop.html">PRODAVNICA</a></li>
            <li><a href="onama.html">O NAMA</a></li>
            <li><a href="kontakt.html">KONTAKT</a></li>

        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
    <!-- KRAJ NAVIGACIJE -->

    <!-- POČETAK NASLOVA STRANE -->
    <div class="page-header">
      <h1><em>WEBSHOP</em></h1>
    </div>
    <!-- KRAJ NASLOVA STRANE -->
    <form class="prodavnica" id="proizvodi">
      <div class="page-header">

        <!-- POČETAK BOKSEVA -->
        <div class="row">
          <div class="col-xs-3 col-sm-3 col-md-0">

          </div>
          <div class="col-xs-6 col-sm-6 col-md-12">
            <img id="HaGe" src="images/primetime/HAEMER-icon-large1.jpg" class="img-responsive" alt="Haemmer Germany">

          </div>
        </div>
		
        <div class="row">

          <!-- BOČNI SEGMENT KOJI SLUŽI SAMO ZA ODVAJANJE -->
          <div class="col-xs-2 col-md-1">
          </div>

          <!-- GLAVNI SEGMENT -->
          <div class="col-xs-8 col-md-10">

            POČETAK DELA SA FOTOGRAFIJAMA PROIZVODA
            
            <div class="okvir0">

              FOTOGRAFIJA 1
         <%for(Artikal a: listArtikala){ %>
              <div class="okvir1">
              
                <div>
                  <p>
                    <h3>
                      <strong><%=a.getNaziv() %></strong>
                    </h3>
                  
                  <a>
                    <img src="slike/<%=a.getImeSlike() %>" alt="DHC-12 Zeno">
                  </a>
                </div>
                <input type="hidden" name="idArtikla" value="<%=a.getIdArtikla() %>">
                <p>
                  <strong><%=a.getCena() %> RSD</strong>
                </p>
                <p>
                  Naručujem <label for="jedan"></label>
                  <input type="number" id ="naziv+<%=a.getIdArtikla() %>"> name="vlada"  placeholder="0"> komada
                </p>
                <p>
                  <input type="submit" value="Dodaj u korpu" onclick="poziv('naziv+<%=a.getIdArtikla()%>')">
                </p>
             
              </div>
              
	<%} %>
	
            </div>
            
           
            <!-- KRAJ SA FOTOGRAFIJAMA PROIZVODA -->
          </div>

        </div>

        <!-- KRAJ BOKSEVA -->

      </div>
	
            	
              
      <div class="page-header">

        <!-- POČETAK BOKSEVA -->
        <div class="row">
          <div class="col-xs-3 col-sm-3 col-md-0">

          </div>
          <div class="col-xs-6 col-sm-6 col-md-12">

            <div class="row">
              <div class="col-md-6">
                <img id="HaGe" src="images/primetime/UBoat-icon-large1.jpg" class="img-responsive"
                  alt="Haemmer Germany">
              </div>
              <div class="col-md-6">
                <p>
                  <strong><em>Satovi marke U-Boat se mogu naručiti jedino putem direktnog kontakta.</em></strong>
                </p>

              </div>
            </div>

          </div>
        </div>

      </div>


      <div class="page-header">

        <div id="krajodabira">
          <div class="row">
            <div class="col-md-12">
              <h2>
                Detalji narudzbenice
              </h2>

              <div class="grupaizracunavanje">
                <p>
                  <label for="btn-izracunaj">

                  </label>
                <li><a href="/CetvrtiProjekatSesijeNastvak/ServletKupovina">Kupi</a></li>
                  <!-- <input type="text" id="txt-izracunaj" placeholder="0.00 RSD" name=""> -->
                </p>
                <div id="rezultati">
                </div>
                <br>
                <div id="rezultati1">
                </div>
                <p>
                  <a class="btn btn-primary btn-lg" href="kontakt.html" role="button">Prijavite se</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

    </form>
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
</form>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/mojjs.js"></script>
<script>

	function poziv(vrednost) {
		var id = vrednost.substring(6,7);
		var kolicina = document.getElementById(vrednost).value;
		document.getElementById("idartikla1").value=id;
		document.getElementById("kolicina1").value=kolicina;
		/* alert(kolicina);
		alert(id); */
		}
</script>
 <!--  <script src="js/korpa.js"></script> -->


</body>

</html>