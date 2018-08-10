<?php
$con = mysql_connect("localhost", "root", "") or die("connection failed!");
mysql_select_db("webo") or die("db not found");
echo "Connected!<br>";
?>