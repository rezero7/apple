<?php 

// menghubungkan php dengan koneksi database
include 'koneksi.php';

// menangkap data yang dikirim dari form login
$username = $_POST['USERNAME'];
$password = $_POST['PASSWORD'];


// menyeleksi data user dengan username dan password yang sesuai
$login = mysqli_query($koneksi,"select * from data_user where USERNAME='$username' and PASSWORD='$password'");
// menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($login);

// cek apakah username dan password di temukan pada database
if($cek > 0){

	$data = mysqli_fetch_assoc($login);

	// cek jika user login sebagai admin
	if($data['LEVEL']=="HRD"){
		// mengaktifkan session pada php
		session_start();

		// buat session login dan username
		$_SESSION['USERNAME'] = $username;
		$_SESSION['LEVEL'] = "HRD";
		// alihkan ke halaman dashboard admin
		header("location:hrd/index.php");

	// cek jika user login sebagai pegawai
	}else if($data['LEVEL']=="Pegawai"){
		session_start();
		// buat session login dan username
		$_SESSION['USERNAME'] = $username;
		$_SESSION['LEVEL'] = "Pegawai";
		// alihkan ke halaman dashboard pegawai
		header("location:pegawai/index.php");

	// cek jika user login sebagai pengurus
	}else if($data['LEVEL']=="Manager"){
		session_start();
		// buat session login dan username
		$_SESSION['USERNAME'] = $username;
		$_SESSION['LEVEL'] = "Manager";
		// alihkan ke halaman dashboard pengurus
		header("location:manager/index.php");

	}else{

		// alihkan ke halaman login kembali
		header("location:index.php?pesan=gagal");
	}

	
}else{
	header("location:index.php?pesan=gagal");
}



?>