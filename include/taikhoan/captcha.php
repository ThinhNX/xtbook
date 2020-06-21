<?php
	session_start();
	$captcha=imagecreatefromgif('nencaptcha.gif');

	$mauden=imagecolorallocate($captcha,0,0,0);
	$mautrang=imagecolorallocate($captcha,225,225,225);
	///////////////////////////////////
	$font="Vnarial.ttf";
	$string=md5(microtime()* mktime());
	$text='adminchophep';
	$_SESSION['maxacnhan']='adminchophep';
	imagettftext($captcha,15,0,20,27,$mautrang,$font,$text);
	imagepng($captcha);

	///////////////////////////////////
	imagedestroy($captcha);
?>