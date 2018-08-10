<!--Welcome it works!! ye-->
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head bgcolor="black">
	<title>۞ Welcome to Webo ░▒▓█</title>
</head>
<body>
	<table width="100%" background="tablebg.JPG">
		<tr><td colspan="6" width="100%"><br><br><br></td></tr>
		<tr><td rowspan="2"></td><td rowspan="4"><img src=<?php if ($_GET['image']) {echo "\"img/".$_GET['image']."\"";}
																else{echo "\"dp.png\"";} ?> height="225" width="225" id="dp"></td>
			<td colspan="4" rowspan="2"><h1>Hi! <?php echo $_GET['firstname']." ".$_GET['lastname']; ?></h1></td></tr>
	</table>
	<table><h1>
		<tr><td>Your User Id:</td><td><?php echo $_GET['userid']; ?></td></tr>
		<tr><td>Your First Name:</td><td><?php echo $_GET['firstname']; ?></td></tr>
		<tr><td>Your Last Name:</td><td><?php echo $_GET['lastname']; ?></td></tr>
		<tr><td>You are a:</td><td><?php echo $_GET['gender']; ?></td></tr>
		<tr><td>Your BirthDay:</td><td><?php echo $_GET['dob']; ?></td></tr>
		<tr><td>Your Mobile No:</td><td><?php echo $_GET['mobilenumber']; ?></td></tr>
		<tr><td>Your Address:</td><td><?php echo $_GET['address']; ?></td></tr>
		<tr><td>Your PIN No:</td><td><?php echo $_GET['pincode']; ?></td></tr>
		<tr><td>Your Image:</td><td><?php echo $_GET['image']; ?></td></tr>
		<tr><td>Your Favourate Color:</td><td><?php echo $_GET['color']; ?></td></tr>
	</h1>
		<tr><td>Your BookMarks:</td><td><?php include('bookmarks.php'); ?></td></tr>
		<tr><form action="addbookmark.php" method="POST"><td>New URL with http//:<input type="text" name="href" value="http://"></td><td>URL Title:<input type="text" name="title"></td><td><input type="submit" name="Add to bookmarks"></td><input type="hidden" name="userid" value="<?php echo $_GET['userid'];?> "></form></tr>
	</table>
</body>
</html>