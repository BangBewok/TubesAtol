<?php 
session_start();
include 'db_config.php';
$username	=$_POST['username'];
$password=md5($_POST['password']);

$member=mysqli_query($link,"SELECT * FROM member WHERE member_username='$username' AND member_password ='$password'");

if(mysqli_num_rows($member)==1){
	$_SESSION['member_email']=$username;
	header("location:index.php");
}

else
{
	header("location:index.php?pesan=gagal")or die(mysql_error());
}
?>