<table width="100%" background="tablebg.JPG">
	<?php 
	require('dbcon.php');
	$query="SELECT * FROM bookmarks";
	if ($_GET['userid']) {
		# code...
		$query .= " WHERE userid='".$_GET['userid']."'";
	}
	$result = mysql_query($query);
	mysql_close($con);
	//echo $query;
	echo "<ol>";
	while($row = mysql_fetch_array($result)){
		echo "<li><a href=\"".$row['href']."\" rel=\"".$row['rel']."\" target=\"".$row['target']."\">".$row['title']."</a></li>" ;
	}
	echo "<ol>";
	?>
</table>