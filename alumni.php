<?php require_once('connection.php'); ?>

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
          <li><a class="w3-text-white  w3-hover-text-green " href="home.php">Home</a></li>
          <li class="active"><a class="w3-text-white  w3-hover-text-green" href="alumni.php">Alumni</a></li>
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



<!---Third grid-->
<div class="w3-row-padding w3-light-grey w3-hover-indigo w3-padding-32 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
      <h2>National Institute Of Technology,Kurukshetra</h2>
      <h4 class="w3-padding-32">
          <p>
        NITK has started an MCA Alumni Search Website this year. With the increase of the members of alumni,
         the Institute has started the website for contact and for take advise from them.
      </p>
    </h4>
    </div>
    <div class="w3-third w3-center">
      <img id="alumni-logo-image" class="w3-padding-16 w3-center" width="150px" src="images/kkr1.png" alt="" />
    </div>
  </div>
</div>
<!-- Second Grid -->
<div class="w3-row-padding w3-light-grey w3-hover-indigo w3-padding-64 w3-container">
  <div class="w3-content">
      <h2>Search Here For Alumni Community</h2>
      <div class="w3-third w3-left-align"style="float:left">
      <p class="w3-text-grey">
	  <!-- hgfhjyujgfbgf-->
	  <form class="frm">
<div class="rad">
<input type="radio" name="gender" value="name"  id="radio1" class="radio" checked/>
<label for="radio1">By Name</label>
</div>

<div class="rad">
<input type="radio" name="gender" value="company" id="radio2" class="radio"/>
<label for="radio2">By Company</label>
</div>

<div class="rad">	
<input type="radio" name="gender" value="year"id="radio3" class="radio"/>
<label for="radio3">By Year</label>
</div>
</form>

<!-- dghhfgdfgfg-->
        <form>

		<!--
          <input type="radio" name="gender" value="name" > By Name<br>
          <input type="radio" name="gender" value="company">By Company<br>
          <input type="radio" name="gender" value="year">By Year-->
        </form>
      </p>
    </div>
    <div class="w3-twothird w3-center"  style="float:right">
	<div class="name box">
      <form action="alumni.php" method="post">
        First name: <input type="text" class="txtalumni"name="Firstname" id = 'Firstname'></br></br>
        Last name: <input type="text"class="txtalumni"name="lastName" id = "lastName"><br><br>
        <input type="submit" name="submit" value="Submit">
         <p id="math_res"></p>
		 </div>
      </form >
	  <div class="company box">
      <form action="alumni.php" method="POST">
        Company: <input type="text" class="txtalumni"name="company" id = 'company'><br><br>
        <input type="submit" name="submit" value="Submit">
         <p id="math_res"></p>
		 </div>
      </form>
	  <div class="year box">
      <form action="alumni.php" method="POST">
        Year: <input type="text"class="txtalumni" name="year" id = 'year'>
        <br><br>
        <input type="submit" name="submit" value="Submit">
         <p id="math_res"></p>
		 </div>
      </form>
    </div>
  </div>
  <!-- lists  -->




 <!--  lists -->

  <style type="text/css">
    .box{
        padding: 20px;
        display: none;
        margin-top: 20px;

    }
    .red{ background: #ff0000; }
    .green{ background: #00ff00; }
    .blue{ background: #0000ff; }
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('input[type="radio"]').click(function(){
        if($(this).attr("value")=="name"){
            $(".box").not(".name").hide();
            $(".name").show();
        }
        if($(this).attr("value")=="company"){
            $(".box").not(".company").hide();
            $(".company").show();
        }
        if($(this).attr("value")=="year"){
            $(".box").not(".year").hide();
            $(".year").show();
        }
    });
});
</script>



  </div>


 <?php
  if(isset($_REQUEST['Firstname'])||isset($_REQUEST['lastName'])||isset($_REQUEST['year'])||
  isset($_REQUEST['company'])){
  if(isset($_REQUEST['Firstname']) && isset($_REQUEST['lastName'])){
			 $fname=$_REQUEST['Firstname'];
			$sname=$_REQUEST['lastName'];
			$query = "select * from almma where Firstname='$fname' AND lastName='$sname'";
	
			}
	else if(isset($_REQUEST['Firstname'])){
		
			if(isset($_REQUEST['Firstname'])){
				$ofname=$_REQUEST['Firstname'];
				
				$query = "select * from almma where Firstname='$ofname'";
			}
			
	  }
	 else if(isset($_REQUEST['lastName'])){
		  if(isset($_REQUEST['lastName'])){
				$osname=$_REQUEST['lastName'];
				$query = "select * from almma where lastName='$osname'";
			}
	  }
	  else if(isset($_REQUEST['year'])){
		  $year=$_REQUEST['year'];
		$query = "select * from almma where year_of_pass='$year' or year_of_join='$year' ";
	  }
	  else if(isset($_REQUEST['company'])){
		  $company=$_REQUEST['company'];
		 $query = "select * from almma where company='$company'  ";
	  }


$result = mysql_query($query);

while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {?>
<ul class="w3-ul  w3-card-4">
  <li class="w3-padding-16 w3-card-4">
  <div class="w3-container">
    <div class="w3-third">
       <img src="./profiles/<?php echo $line['img']; ?>" class="w3-left w3-circle w3-margin-right" style="width:60px;height:60px">
    <span class="w3-xlarge"><?php echo $line['Firstname'] ;?>&nbsp<?php echo $line['lastName'];?></span><br>
    <span><?php echo $line['company'];?></span>

    </div>
    <div class="w3-third">
    <?php echo $line['email'];?>
    </div>
    <div class="w3-third">
      <?php echo $line['year_of_join'];?>-
    <?php echo $line['year_of_pass'];?>
    </div>
    <div class="w3-third">
     <a href="<?php echo $line['fb_link'];?>"><i class="fa fa-facebook-square" style="font-size:40px;"></i></a>
     <a href="<?php echo $line['linkedin_link'];?>"><i class="fa fa-linkedin-square" style="font-size:40px;"></i></a>
    </div>
  </div>
  </li>
</ul>
<?php } } ?>

<!--footer-->
<footer class="w3-grey w3-card-2 w3-container">
  <h6><center><span > @all coptrights reserved by alumni association nitkkr</span></center></h6>
</footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
<style>
form {
	margin: 40px 0;
}
.rad {
	clear: both;
	margin: 0 50px;
}

label {
  width: 200px;
  border-radius: 3px;
  border: 1px solid #D1D3D4
}

/* hide input */
input.radio:empty {
	margin-left: -999px;
}

/* style label */
input.radio:empty ~ label {
	position: relative;
	float: left;
	line-height: 2.5em;
	text-indent: 3.25em;
	margin-top: 2em;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

input.radio:empty ~ label:before {
	position: absolute;
	display: block;
	top: 0;
	bottom: 0;
	left: 0;
	content: '';
	width: 2.5em;
	background: #D1D3D4;
	border-radius: 3px 0 0 3px;
}

/* toggle hover */
input.radio:hover:not(:checked) ~ label:before {
	content:'\2714';
	text-indent: .9em;
	color: #C2C2C2;
}

input.radio:hover:not(:checked) ~ label {
	color: #888;
}

/* toggle on */
input.radio:checked ~ label:before {
	content:'\2714';
	text-indent: .9em;
	color: #9CE2AE;
	background-color: #4DCB6D;
}

input.radio:checked ~ label {
	color: #777;
}
.txtalumni{
	border:2px solid #456879;
	                  border-radius:10px;
	                  height: 30px;
	                  width: 230px; 
}
</style>
</html>
