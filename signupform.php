<!DOCTYPE html>
<html  lang="en">

<head>
  <!-- Required meta tags always come first -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Sign Up</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <!--style-->
  <link rel="stylesheet" href="css/w3.css" media="screen" title="no title" charset="utf-8">
  <link rel="stylesheet" href="css/IndexCss.css" media="screen" title="no title" charset="utf-8">
  
</head>

<body class="w3-transparent">

<center>
  <div id="navbar" class="w3-navbar-brand w3-container w3-padding-2 w3-indigo w3-card-8">
    <a class="navbar-brand  w3-text-white" href="#"><img style="width: 64px;" src="images/alumnilogo.png" alt="Dispute Bills">Alumni Association </a>
    <p><h6 class="w3-right-align"></a>National Institute of Technology, Kurukshetra</h6></center></p>
  </div>
<center>
<!--Sign Up form-->
  <div class="w3-container w3-padding-large">

    <div class="w3-third">
    <br>      
    </div>
    <div class="w3-third w3-padding-large w3-card-8 w3-white">      
    <!--<p><h2>Sign Up Form</h2></p>-->
    <form action="signup.php" method="post" enctype="multipart/form-data">
       <legend>
         <h1>Your Basic Info.</h1>
       </legend>
      <input class="w3-input" required="true"  placeholder="First Name*"  type="text" id="fname" name="fname">
      <input class="w3-input" required="true" placeholder="Last Name*" type="text" id="lname" name="lname">
      <input class="w3-input"required="true" placeholder="Email*" type="email" id="mail" name="email">
      <input class="w3-input" required="true"placeholder="Password*"  type="password" id="password" name="userpassword">
      <input class="w3-input"required="true" placeholder="Company*"  type="text" id="company" name="company">
      <input class="w3-input"required="true" placeholder="Year of joining*" id="YOJ" type="text"  name="join">
      <!--<input class="w3-input"required="true" placeholder="Year Of Passing*"  type="text" id="YOP" name="pass">-->
     <br>
     <span class="w3-label" class="label label-default"> Upload your Picture</span>
      <input type="file" name="imgpic" accept="image/*" /><p>max-size 1MB.</p>
      
      <input type="submit" class="btn btn-primary" value="signUp"name="submit"></input>
    
  </form>
    </div>
    <div class="w3-third">
      <br>
    </div>
  </div>
<!-- end:Main Form -->
</div>
</center>
<!--footer-->
<footer class="w3-grey w3-card-2 w3-container w3-fixed-bottom">
<div  class="w3-grey w3-center w3-row-padding w3-padding-4  w3-container">
  <div class="w3-content">
    <a href="#" class="w3-circle"><i class="fa fa-facebook-square" style="font-size:40px;color:white;"></i></a>
    <a href="#" class="w3-circle"><i class="fa fa-twitter-square" style="font-size:40px;color:white;"></i></a>
    <a href="#" class="w3-circle"><i class="fa fa-linkedin-square" style="font-size:40px;color:white;"></i></a>
    <a href="#" class="w3-circle"><i class="fa fa-google-plus-square" style="font-size:40px;color:white;"></i></a>  
    <div class="w3-third w3-center">

    </div>
    <div class="w3-third w3-leftr">

    </div>
  </div>
</div>
  <h6><center><span > @all coptrights reserved by alumni association nitkkr</span></center></h6>
</footer>
  <!-- jQuery first, then Bootstrap JS. -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
</body>

</html>
