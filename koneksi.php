<?php 
$koneksi = mysqli_connect("localhost","root","","user_level");
 
// Check connection
if (mysqli_connect_error()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}
 
?>