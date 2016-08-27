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
	 else  if(isset($_REQUEST['lastName'])){
		  if(isset($_REQUEST['lastName'])){
				$osname=$_REQUEST['lastName'];
				$query = "select * from almma where lastName='$osname'";
			}
	  }
	  else if(isset($_REQUEST['year'])){
		  $year=$_REQUEST['year'];
		$query = "select * from almma where year_of_pass='$year' ";
	  }
	  else if(isset($_REQUEST['company'])){
		  $company=$_REQUEST['company'];
		 $query = "select * from almma where company='$company'  ";
	  }
  }
	  ?>