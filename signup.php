<?php
		include("connection.php");
		
		
		

		$fname=$_REQUEST["fname"];
		$lname=$_REQUEST["lname"];
		$email=$_REQUEST["email"];
		$company=$_REQUEST["company"];
		$password=$_REQUEST["userpassword"];
		$join=$_REQUEST["join"];
		$pass=$join+3;
		$temp = explode(".", $_FILES["imgpic"]["name"]);
		$new_file_name = round(microtime(true)) . '.' . end($temp);
		
		$result=mysql_query("select * from almma where email='$email' ",$conn) or die(mysql_error());
		$ct=mysql_num_rows($result);
		if($ct>0){
				header("location:signupform.php?msg=regerror");
			}
			else
			{
			 move_uploaded_file($_FILES['imgpic']['tmp_name'], 'profiles/'.$new_file_name);
			$data=mysql_query("insert into almma(Firstname,lastName,email,password,company,year_of_join,year_of_pass,img) values ('$fname','$lname','$email','$password','$company','$join','$pass','$new_file_name')") or die(mysql_error());
header("location:home.php?msg=suc");
			}
mysql_close($conn);
?>