<?php
session_start();
include('connection.php');
$fname=$_POST['fname'];
$lname=$_POST['lname'];
//$mname=$_POST['mname'];
$gender=$_POST["gender"];
$address=$_POST['address'];
$contact=$_POST['contact'];
$username=$_POST['username'];
$password=$_POST['password'];
$epwd = md5($password);

$certifications=$_POST['certifications'];

$hobbies=$_POST['hobbies'];




mysqli_query($bd,"INSERT INTO member(fname,lname,gender,address,contact,username,password,certifications,hobbies) VALUES('$fname','$lname','$gender','$address','$contact','$username','$epwd','$certifications','$hobbies')");

//echo "INSERT INTO member(fname,lname,gender,address,contact,picture,username,password) VALUES('$fname','$lname','$mname','$address','$contact','$pic','$username','$epwd')";
//exit;
header("location:index.php?remarks=success");

mysqli_close($con);
?>
