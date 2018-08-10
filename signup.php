<!DOCTYPE html>
<html>
<head>
	<title>Signup</title>
</head>
<body bgcolor="pink">

	<h1 align="center">Registration Form</h1>
<form action="insert.php" method="POST" enctype="multipart/form-data">
	<table border="5" bordercolor="black" bgcolor="lightblue" width="100%">

		<tr>
			<td>First Name</td><td><input type="text" name="firstname" maxlength="20" required></td>
		</tr>

		<tr>
			<td>Last Name</td><td><input type="text" name="lastname" maxlength="20" required></td>
		</tr>

		<tr>
			<td>DOB</td><td><input type="date" name="dob" required></td>
		</tr>

		<tr>
			<td>Gender</td><td>
				<input type="radio" name="gender" value="male" required> Male
				<input type="radio" name="gender" value="female"> Female
				<input type="radio" name="gender" value="other"> Other
			</td></tr>
		<tr>
			<td>User Id</td><td><input type="email" name="userid" maxlength="50" required></td>
		</tr>

		<tr>
			<td>Password</td><td><input type="Password" name="password" maxlength="20" required></td>
		</tr>

		<tr>
			<td>Confirm Password</td><td><input type="password" name="cpassword" maxlength="20" required></td>
		</tr>

		<tr>
			<td>Upload yor image</td><td><input type="file" name="image" required></td>
		</tr>

		<tr>
			<td>Your favourate color</td><td><input type="color" name="color" required></td>
		</tr>


		<tr>
			<td>Address</td><td><input type="textarea" name="address" maxlength="50" required></td>
		</tr>

		<tr>
			<td>Pin Code</td><td><input type="Number" name="pincode" min="100000" max="999999" maxlength="6" required></td>
		</tr>

		<tr>
			<td>Mobile Number</td><td><input type="tel" name="mobilenumber" pattern="[6-9]{1}[0-9]{9}" max="999999999" maxlength="10" required></td>
		</tr>

		<tr>
			<td colspan="2" align="right"><input type="submit" value="Submit"></td>
		</tr>
		
	</table>
</form>
</body>
</html>