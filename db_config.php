<?php

	//config ID
	$host="127.0.0.1";
	$username="root";
	$password="bloodsaber03";
	$database="db_kosan";

	//koneksi
	$link = mysqli_connect($host, $username, $password, $database);
	
	if(!$link){
		die('Tidak Bisa Melakukan Koneksi :'.mysqli_error());
	}


?>