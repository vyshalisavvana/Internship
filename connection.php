<?php
$mysql_hostname= "localhost";
$mysql_user= "root";
$mysql_password="";
$mysql_database="registration";
$prefix ="";
$bd=mysqli_connect($mysql_hostname,$mysql_user,$mysql_password)or die("could not connect database");
mysqli_select_db($bd,$mysql_database)or die("could not select database");
?>
<?php
$mysql_hostname = "localhost";
$mysql_user = "root";
$mysql_password = "";
$mysql_database = "simple_login";
$prefix = "";
$bd = mysqli_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");
mysqli_select_db($bd, $mysql_database) or die("Could not select database");
?>