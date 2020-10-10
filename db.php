<?php
	$dbhost	= "ec2-54-160-18-230.compute-1.amazonaws.com";
	$dbuser = "orsivuswylgniq";
	$dbpass = "d415e10f95921f099e2c5d4f5ff18051f4f7670a039c170f19c48e0bef91fbfb";
	$dbname = "dent6chqe4s7h";

	$connection = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);

	if(mysqli_connect_errno()){ 
		die("Database Connection Failed" . mysqli_connect_error() . "(" . mysqli_connect_errno() . ")");
	}

?>