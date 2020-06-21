<?php
	$ung=mysqli_connect("localhost","root","") or die('Khong The Ket Noi Voi May Chu');
	$strSQL=mysqli_select_db($ung,'cuahangsach');
	mysqli_query($ung,"SET NAMES 'utf8'");
?>