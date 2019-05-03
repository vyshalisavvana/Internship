<?php
	require_once('auth.php');
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login Page</title>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style>
</head>
 
<body>
<p align="center" class="style1">Login successfully </p>
<p align="center">This page is the home, you can put some stuff here......</p>
<p align="center"><a href="index.php">logout</a></p>
</body>
</html>
<?php
require_once('connection.php');
$id=$_SESSION['SESS_MEMBER_ID'];
$result3 = mysqli_query($bd,"SELECT * FROM member where mem_id='$id'");
while($row3 = mysqli_fetch_array($result3))
{ 
$fname=$row3['fname'];
$lname=$row3['lname'];
$address=$row3['address'];
$contact=$row3['contact'];
$gender=$row3['gender'];
$certifications=$row3['certifications'];
$hobbies=$row3['hobbies'];

}
?>
<table width="398" border="0" align="center" cellpadding="0">
  <tr>
    <td height="26" colspan="2">Your Profile Information </td>
    <td><div align="right"><a href="index.php"></a></div></td>
  </tr>
  <tr>
    
    <td width="82" valign="top"><div align="left">FirstName:</div></td>
    <td width="165" valign="top"><?php echo $fname ?></td>
  </tr>
  <tr>
    <td valign="top"><div align="left">LastName:</div></td>
    <td valign="top"><?php echo $lname ?></td>
  </tr>
  <tr>
    <td valign="top"><div align="left">Gender:</div></td>
    <td valign="top"><?php echo $gender ?></td>
  </tr>
  <tr>
    <td valign="top"><div align="left">Address:</div></td>
    <td valign="top"><?php echo $address ?></td>
  </tr>
  <tr>
    <td valign="top"><div align="left">Contact No.: </div></td>
    <td valign="top"><?php echo $contact ?></td>
  </tr>
 <tr>
    <td valign="top"><div align="left">Certifications: </div></td>
    <td valign="top"><?php echo $certifications ?></td>
  </tr>
  <tr>
    <td valign="top"><div align="left">Hobbies: </div></td>
    <td valign="top"><?php echo $hobbies ?></td>
  </tr>
</table>
<p align="center"><a href="index.php"></a></p>