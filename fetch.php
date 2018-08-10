<?php
$userid=$_POST['userid'];
$password=$_POST['password'];
$dob=$_POST['dob'];
require("dbcon.php");
$result = mysql_query("SELECT * FROM webosignup WHERE userid='$userid'");
mysql_close($con);
$userfound = 0;
while($row = mysql_fetch_array($result))
{
	//print_r($row);
		if ($password==$row['password'])
		{
			echo "Logged in succesfully as: ". $userid;
			$url = "profile.php?userid=". $row['userid']. "&firstname=". $row['firstname']. "&lastname=". $row['lastname']."&dob=".$row['dob']."&gender=".$row['gender']."&mobilenumber=".$row['mobilenumber']."&address=".$row['address']."&pincode=".$row['pincode']."&image=".$row['image']."&color=".$row['color'];
			echo "   <a href=\"$url\"><button>Go To Home Now</button></a>";
		}
		elseif ($dob==$row['dob']) {
			# code...
			echo "Your Password is:".$row['password'];
		}
	    else
	    {
	    	echo "Incorrect Password or DOB Input";
		}
	$userfound = 1;
}
if ($userfound==!1) {echo "User ID not found";
}
?>