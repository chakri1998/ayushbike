<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
a:link{
color:red;

 }
a:visited{
color:green;
 }
a:hover{
color:gold;
 }
a:active{
color: blueviolet;
 }

</style>

<style>
body, html {
  height: 100%;
  margin: 0;
  font: 400 15px/1.8 "Lato", sans-serif;
  color: #777;
}

.bgimg-1, .bgimg-2, .bgimg-3 {
  position: relative;
  opacity: 0.65;
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

}
.bgimg-1 {
  background-image: url("https://cdn.dodowallpaper.com/full/759/duke-wallpaper-hd-29.jpg");
  min-height: 100%;
}

.bgimg-2 {
  background-image: url("https://cdn.dodowallpaper.com/full/759/duke-wallpaper-hd-29.jpg");
  min-height: 400px;
}



.caption {
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  text-align: center;
  color: #000;
}

.caption span.border {
  background-color: #111;
  color: #fff;
  padding: 18px;
  font-size: 25px;
  letter-spacing: 10px;
}

h3 {
  letter-spacing: 5px;
  text-transform: uppercase;
  font: 20px "Lato", sans-serif;
  color: #111;
}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1024px) {
  .bgimg-1, .bgimg-2, .bgimg-3 {
    background-attachment: scroll;
  }
}
</style>
</head>
<body>

<div class="bgimg-1">
  <div class="caption">
  <span class="border"><a href="login">Login</a></span>
  </div>
</div>

<div style="color: #777;background-color:yellow;text-align:center;padding:50px 80px;text-align: justify;" >
<!--   -->
  <div class="container">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="https://www.pixelstalk.net/wp-content/uploads/2016/06/Best-Dirt-Bike-HD-Backgrounds.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="https://is1-ssl.mzstatic.com/image/thumb/Purple41/v4/7e/e9/5d/7ee95d77-925d-ec80-7dac-7fb4f9a3bdd3/source/512x512bb.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="https://cdn.wonderfulengineering.com/wp-content/uploads/2013/12/porsche-custom-bike-wallpapers-porsche-custom-bike-stock-photos_1920x1080.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>


<div class="bgimg-1">
  <div class="caption">
  <span class="border"><a href="addcustomer">Register Customer</a></span>
  </div>
</div>

</body>
</html>



    

