<?php
session_start();
include "koneksi.php";

$rating = $_POST["rating"];
$id_user=$_SESSION["id_user"];
$pesan= $_POST["pesan"];

 
if (isset($_POST['rate'])) {
    
$insert =  "INSERT INTO rating  
 VALUES ('" . $id_user . "','" . $rating . "','" . $pesan ."') ";
 if($koneksi->multi_query($insert) === TRUE){
    echo "<script> 
            alert('Terima kasih ratingnya');
            window.location.href = 'blog.php';
        </script> ";
  
 
     }
}

?>