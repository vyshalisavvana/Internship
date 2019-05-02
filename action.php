<?php
$conn = mysqli_connect("localhost","root","","students");


$uname = $_POST["Username"];
$pwd = $_POST["Password"];

$loginquery = mysqli_query($conn,"SELECT userName, pass FROM username WHERE userName='$uname' AND pass='$pwd'");

$logindata = mysqli_fetch_assoc($loginquery);

//print_r($logindata);

if($logindata)
{
	echo "logged in successfully";
}
else
{
	echo "login not successful";
}

?>