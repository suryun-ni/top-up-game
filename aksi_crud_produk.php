<?php
include "koneksi.php";
$id_game = $_POST['id_game'];
$id_produk = $_POST['id_produk'];
$id_top_up = $_POST['id_top_up'];
$jenis_top_up = $_POST['jenis_top_up'];
$harga_top_up = $_POST['harga_top_up'];



// insert
if (isset($_POST['submit'])) {
$insert_produk =  "INSERT INTO top_up (id_top_up, jenis_top_up, harga_top_up)  VALUES ('" . $id_top_up . "','" . $jenis_top_up . "','" . $harga_top_up ."'); ";
$insert_produk .=  "INSERT INTO produk_game (id_produk, id_game, id_top_up)  VALUES ('" . $id_produk . "','" . $id_game . "','" . $id_top_up ."') ";

if($koneksi->multi_query($insert_produk) === TRUE){
        echo "<script> 
                alert('Data Tersimpan');
                window.location.href = 'admin.php';
            </script> ";
           
        }
}elseif (isset($_POST['ubah'])) {
     
    $update =  "UPDATE top_up SET jenis_top_up='$jenis_top_up', harga_top_up='$harga_top_up'  where id_top_up = '$id_top_up';";
    $update .=  "UPDATE produk_game SET id_produk='$id_produk', id_game='$id_game'  where id_top_up = '$id_top_up'";
   echo $update;
    if($koneksi->multi_query($update) === TRUE){
    echo "<script> 
            alert('Data Tersimpan');
            window.location.href = 'admin.php';
        </script> ";
    }
    //delete
}elseif (isset($_POST['hapus'])) {
     
    $delete =  "DELETE from produk_game where id_top_up= '$id_top_up';";
    $delete .=  "DELETE from top_up where id_top_up = '$id_top_up'";
    echo $delete;
    if($koneksi->multi_query($delete) === TRUE){
        echo "<script> 
                alert('Data Tehapus');
                window.location.href = 'admin.php';
            </script> ";
    }
}



?>