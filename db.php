<?php
	$dbhost	= " sql12.freesqldatabase.com";
	$dbuser = "sql12370063";
	$dbpass = "kYSL6Vl86w";
	$dbname = "sql12370063";

	$connection = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);

	if(mysqli_connect_errno()){ 
		die("Database Connection Failed" . mysqli_connect_error() . "(" . mysqli_connect_errno() . ")");
	}

?>
