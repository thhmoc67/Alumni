<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/w3.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Home</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/css/font-awesome.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

<!--Body Starts-->
<body data-spy="scroll" data-target="collapse" data-offset="50">
<!--Navigation Bar-->
  <nav class="navbar navbar-default navbar-fixed-top w3-indigo">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand  w3-text-white" href="#"><img style="width: 64px;" src="images/alumnilogo.png" alt="Dispute Bills">
          Alumni Association
        </a>
      </div>
      <div class="collapse navbar-collapse " id="myNavbar">
        <ul class="nav navbar-nav">
          <li class="active"><a class="w3-text-white  w3-hover-text-green " href="home.php">Home</a></li>
          <li><a class="w3-text-white  w3-hover-text-green" href="alumni.php">Alumni</a></li>
          <li><a class="w3-text-white  w3-hover-text-green" href="gallery.php">Gallery</a></li>
          <li><a class="w3-text-white  w3-hover-text-green" href="#">Career</a></li>
          <li><a class="w3-text-white  w3-hover-text-green" href="contactUs.php">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!--header NITkkr-->
<header  id="header1" class=" w3-container w3-teal">
  <h4><center class="animated bounceInDown">National Institute of Technology, Kurukshetra</center</h4>
</header>


<!--Crasoul-->
<div id="mycarousel" class="clearfix carousel slide clearfix" data-ride="carousel">
<ol class="carousel-indicators">

    <li  data-target="#mycarousel" data-slide-to="0" class="active"></li>
    <li  data-target="#mycarousel" data-slide-to="1"></li>
    <li  data-target="#mycarousel" data-slide-to="2"></li>
    <li  data-target="#mycarousel" data-slide-to="3"></li>
    <li  data-target="#mycarousel" data-slide-to="4"></li>

</ol>

<div class="carousel-inner">

  <div class="item active">
  <img src="images/home images/1.jpg" class="img-responsive">
  <div class="carousel-caption">
    <h1>Inauguration</h1>
    <h4>Digital India</h4>
  </div>
  </div>

  <div class="item">
    <img src="images/home images/2.jpg" class="img-responsive">
    <div class="carousel-caption">
      <h1>NIT Kurukshetra</h1>
      <h4>Main Gate</h4>
    </div>
  </div>
  <div class="item">
    <img src="images/home images/3.jpg" class="img-responsive">
    <div class="carousel-caption">
      <h1>Jublee hall</h1>
      <h4>Digital India Event</h4>
    </div>
  </div>
  <div class="item">
    <img src="images/home images/4.jpg" class="img-responsive">
    <div class="carousel-caption">
      <h1>Digital India Event</h1>
      <h4>Skit Team</h4>
    </div>
  </div>

  <div class="item">
    <img src="images/home images/5.jpg" class="img-responsive">
    <div class="carousel-caption">
      <h1>Digital India Event</h1>
      <h4>Orgnizer Team</h4>
    </div>
  </div>
</div>
<a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
  <span class="icon-prev"></span></a>
  <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
    <span class="icon-next"></span></a>

</div>



<!--first-grid-->
<div  class="w3-light-grey w3-row-padding w3-padding-64 w3-hover-indigo w3-container">
  <div class="w3-content">
    <div id="first-grid" class="w3-twothird">
      <h1>Welcome to Alumni Association</h1>
      <h4 class="w3-padding-48">
        <p>
          "The NIT MCA Alumni Association has been envisaged  to foster
          a closely knit network bridging the gap between young budding
          NITians and the accomplished Alumni. Our Alumni  have made us
          proud time and again by achieving laurels round the globe and
          we wish to showcase the same to our entire MCA family."
      </h4>
      </p>
    </div>

    <div class=" w3-third w3-center">
      <img id="alumni-contactUs-image" class="img-responsive w3-padding-64 w3-margin-right"
      width="200px" src="images/alumnilogo.png" alt="my strength" />
    </div>
  </div>
</div>


<!--Second Grid-->
<div  class="w3-grey w3-center w3-row-padding w3-padding-4  w3-container">
  <div class="w3-content">

      <img id="alumni-contactUs-image" class="  w3-padding-4 "
      width="50px" src="images/google-plus-logo.png" alt="my strength" />
      <img id="alumni-contactUs-image" class="  w3-padding-4 "
      width="50px" src="images/linkedin.png" alt="my strength" />
      <img id="alumni-contactUs-image" class="  w3-padding-4 "
      width="50px" src="images/facebook.png" alt="my strength" />

    <div class="w3-third w3-center">

    </div>
    <div class="w3-third w3-leftr">

    </div>
  </div>
</div>

<!--footer-->
<footer class="w3-grey w3-card-2 w3-container">
  <h6><center><span > @all coptrights reserved by alumni association nitkkr</span></center></h6>
</footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>

</html>
