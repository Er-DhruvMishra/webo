<?php
if ($_POST['password']==$_POST['cpassword']) {
	# code...
$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$dob=$_POST['dob'];
$gender=$_POST['gender'];
$userid=$_POST['userid'];
$password=$_POST['password'];
$color=$_POST['color'];
$address=$_POST['address'];
$pincode=$_POST['pincode'];
$mobilenumber=$_POST['mobilenumber'];
$image =basename($_FILES["image"]["name"]);
require("dbcon.php");
$result = mysql_query("INSERT INTO webosignup(firstname, lastname, dob, gender, userid, password, color, address, pincode, mobilenumber, image) VALUES ('$firstname','$lastname','$dob','$gender','$userid','$password','$color','$address','$pincode','$mobilenumber', '$image')");
	if ($result) {
	# code...
		include("saveimage.php");
		echo "<br>Sign UP Succesfully<br>";
		print_r($_POST);
		echo "<br><a href=\"login.php\"><button>Login Now</button></a>";
	}
mysql_close($con);

}
else{echo "Password doesn't match";}

 ?>