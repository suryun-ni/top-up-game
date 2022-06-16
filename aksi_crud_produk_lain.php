<?php
include "koneksi.php";

$id_produk_lain = $_POST['id_produk_lain'];
$nama_produk_lain = $_POST['nama_produk_lain'];
$harga = $_POST['harga'];




// insert
if (isset($_POST['submit'])) {
$insert_produk =  "INSERT INTO produk_lain 
  VALUES ('" . $id_produk_lain . "','" . $nama_produk_lain . "','" . $harga ."'); ";

if($koneksi->multi_query($insert_produk) === TRUE){
        echo "<script> 
                alert('Data Tersimpan');
                window.location.href = 'admin.php';
            </script> ";
           
        }
}elseif (isset($_POST['ubah'])) {
     
    $update =  "UPDATE produk_lain SET nama_produk='$nama_produk_lain', jumlah='$harga'  where id_produk_lain = '$id_produk_lain';";
    
    if($koneksi->multi_query($update) === TRUE){
    echo "<script> 
            alert('Data Tersimpan');
            window.location.href = 'admin.php';
        </script> ";
    }
    //delete
}elseif (isset($_POST['hapus'])) {
     
    $delete =  "DELETE from produk_game  where id_produk_lain = '$id_produk_lain';";
    
    if($koneksi->multi_query($delete) === TRUE){
        echo "<script> 
                alert('Data Tehapus');
                window.location.href = 'admin.php';
            </script> ";
    }
}



?>