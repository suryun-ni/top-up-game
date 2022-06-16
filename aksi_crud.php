<?php
include "koneksi.php";
$id_game = $_POST['id_game'];
$nama_game = $_POST['nama_game'];
$detail = $_POST['detail'];
$platform =  $_POST['platform'];
$spesifikasi =  $_POST['spesifikasi'];
$nama = $_FILES['file']['name'];
$x = explode('.', $nama);
	$ekstensi = strtolower(end($x));
	$ukuran	= $_FILES['file']['size'];
	$file_tmp = $_FILES['file']['tmp_name'];


// insert
if (isset($_POST['submit'])) {
    move_uploaded_file($file_tmp, 'img/file/'.$nama);
$insert =  "INSERT INTO game (id_game, nama_game, detail,file)  VALUES ('" . $id_game . "','" . $nama_game . "','" . $detail ."','" . $nama ."'); ";
$insert .=  "INSERT INTO spesifikasi (id_game, platform, spesifikasi)  VALUES ('" . $id_game . "','" . $platform . "','" . $spesifikasi ."') ";
 
if($koneksi->multi_query($insert) === TRUE){
        echo "<script> 
                alert('Data Tersimpan');
                window.location.href = 'admin.php';
            </script> ";
           
        }
}elseif (isset($_POST['ubah'])) {
    move_uploaded_file($file_tmp, 'img/file/'.$nama);
    $update =  "UPDATE game SET nama_game='$nama_game', detail='$detail', file = '$nama'  where id_game = '$id_game';";
    $update .=  "UPDATE spesifikasi SET platform='$platform', spesifikasi='$spesifikasi'  where id_game = '$id_game'";
   echo $update;
    if($koneksi->multi_query($update) === TRUE){
    echo "<script> 
            alert('Data Tersimpan');
            window.location.href = 'admin.php';
        </script> ";
  
 
     }
    //delete
}elseif (isset($_POST['hapus'])) {
    
    $delete =  "DELETE from spesifikasi where id_game = '$id_game';";
    $delete .=  "DELETE from game where id_game = '$id_game'";
    echo $delete;
    if($koneksi->multi_query($delete) === TRUE){
        echo "<script> 
                alert('Data Tehapus');
                window.location.href = 'admin.php';
            </script> ";
      
    }
}



?>