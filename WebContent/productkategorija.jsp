<%@page import="domen.Kategorije"%>
<%@page import="dao.impl.DaoKategroijeImpl"%>
<%@page import="dao.DaoKategorije"%>
<%@page import="domen.Artikal"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Prime - Haemmer</title>
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
<% 
/* DaoKategorije dk = new DaoKategroijeImpl();
List<Kategorije>listKategorija = dk.vratiKategorije(); */

List<Artikal>list =(List<Artikal>) request.getAttribute("list"); 

DaoKategorije dk = new DaoKategroijeImpl();
List<Kategorije>listKategorija = dk.vratiKategorije();
%>
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
               <%
               if(list != null){
            	   for(Kategorije k: listKategorija){ %>
                   <li><a href="/CetvrtiProjekatSesijeNastvak/ServletKategorijePrikaz?id=<%=k.getId()%>"><%=k.getNaziv() %></a></li>
                   <%} %>
              
              
              </ul>
            </li>
            <!-- KRAJ PADAJUĆEG MENIJA -->

            <li><a href="webshop.html">PRODAVNICA</a></li>
            <li><a href="onama.html">O NAMA / KONTAKT</a></li>
            <li><a href="kontakt.html">LOGIN</a></li>

        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
    <!-- KRAJ NAVIGACIJE -->

    <!-- POČETAK NASLOVA STRANE -->
    <div class="page-header">
      <h1><em>HAEMMER Germany</em></h1>

    </div>
    <!-- KRAJ NASLOVA STRANE -->

    <div class="page-header">

      <!-- POČETAK BOKSEVA -->
      <div class="row">
        <div class="col-md-6">
          <img id="HaGe" src="images/primetime/header-haemmer-L.jpg" class="img-responsive" alt="Haemmer Germany">
        </div>
        <div class="col-md-6">
          <p>
            HAEMMER Germany vrhunski proizvođač satova sa automatskim i hronograf mehanizmom, predstavlja novo ime na
            srpskom tržištu kvalitetnih i luksuznih satova.
          </p>
          <p>
            Nastao u srcu rurske oblasti i kao rezultat četrdestogodišnjeg iskustva u izradi satova, ovaj brend je
            svojim
            kvalitetom i dizajnom pravi predstavnik nadaleko čuvene nemačke preciznosti, funkcionalnosti i
            prepoznatljivog
            dizajna.
          </p>
          <p>
            Inspirisan nemačkim podmorničarskim satovima, kao i najnovijim trendovima u dizajnu satova velikog prečnika,
            HAEMMER Germany brzo je osvojio svet. Kolekcija sadrži muške i ženske modele proizvodene u tri veličine:
            45mm,
            48 mm i 50mm.
          </p>
          <p>
            Sve modele odlikuje preciznost mehanike i izbor materijala koji garantuju dugovečnost, kao i jedinstveni
            dizajn
            koji ostaje atraktivan godinama. Ništa manje nije zanemaren ni komfor najaktivnijih kupaca. Naime, na
            HAEMMER
            satovima krunica za navijanje se nalazi na levoj strani što omogućava dodatnu udobnost prilikom nošenja, ali
            i
            doprinosi još većoj autentičnosti ovog brenda.
          </p>
          <p>
            Satovi su otporni na vodu, visoke temperature kao i grebanje. Luksuznom izgledu doprinose i narukvice od
            najkvalitetnije kože sa metalnim kopčama, kao i detalji od swarovski kristala na ženskim modelima.
          </p>
          <p>
            Svaki sat ima laserski graviran serijski broj i jedinstvenu internacionalnu garanciju od 2 godine.
          </p>
        </div>
      </div>




      <div class="row">

        <!-- BOČNI SEGMENT KOJI SLUŽI SAMO ZA ODVAJANJE -->
        <div class="col-xs-2 col-md-1">
        </div>

        <!-- GLAVNI SEGMENT -->
        <div class="col-xs-8 col-md-10">

          <!-- POČETAK DELA SA FOTOGRAFIJAMA PROIZVODA -->
          <div class="okvir0">

            <!-- FOTOGRAFIJA 1 -->
            <%for(Artikal a:list){ %>>
            <div class="okvir1">
              <div>
                <a href="webshop.jsp">
                  <img src="slike/<%=a.getImeSlike() %>" alt=<%=a.getNaziv()%>>
                </a>
              </div>
              <p>
                <strong><%=a.getNaziv()%></strong>
                <br>
                <small><%=a.getCena()%> RSD</small>
              </p>

            </div>
            <%} }%>

            <!-- FOTOGRAFIJA 2 -->
         <!--    <div class="okvir1">
              <div>
                <a href="webshop.html">
                  <img src="images/haemmer/DHC-13_Moon.jpg" alt="DHC-13 Moon">
                </a>
              </div>
              <p>
                <strong>DHC-13 Moon</strong>
                <br>
                <small>40,150.00 RSD</small>
              </p>

            </div>

            FOTOGRAFIJA 3
            <div class="okvir1">
              <div>
                <a href="webshop.html">
                  <img src="images/haemmer/HC-07_Invader.jpg" alt="HC-07 Invader">
                </a>
              </div>
              <p>
                <strong>HC-07 Invader</strong>
                <br>
                <small>42,350.00 RSD</small>
              </p>

            </div>

            FOTOGRAFIJA 4
            <div class="okvir1">
              <div>
                <a href="webshop.html">
                  <img src="images/haemmer/HC-16_Charon.jpg" alt="HC-16 Charon">
                </a>
              </div>
              <p>
                <strong>HC-16 Charon</strong>
                <br>
                <small>42,350.00 RSD</small>
              </p>

            </div>

            FOTOGRAFIJA 5
            <div class="okvir1">
              <div>
                <a href="webshop.html">
                  <img src="images/haemmer/HQ-02_Dublin.jpg" alt="HQ-02 Dublin">
                </a>
              </div>
              <p>
                <strong>HQ-02 Dublin</strong>
                <br>
                <small>25,300.00 RSD</small>
              </p>

            </div>

            FOTOGRAFIJA 6
            <div class="okvir1">
              <div>
                <a href="webshop.html">
                  <img src="images/haemmer/HQ-10_Brussel.jpg" alt="HQ-10 Brussel">
                </a>
              </div>
              <p>
                <strong>HQ-10 Brussel</strong>
                <br>
                <small>25,300.00 RSD</small>
              </p>

            </div>

          </div> -->
          <!-- KRAJ SA FOTOGRAFIJAMA PROIZVODA -->

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

</body>

</html>