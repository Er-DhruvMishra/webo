<<?php 
require('dbcon.php');
$href=$_POST['href'];
$title=$_POST['title'];
$userid=$_POST['userid'];
$result = mysql_query("INSERT INTO bookmarks(href, title, rel, target, userid) VALUES ('$href','$title','nofollow','_blank','$userid')");
mysql_close($con);
if ($result) {echo "Bookmark Added Succesfully";}
else{echo "Error";}
 ?>
