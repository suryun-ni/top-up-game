<?php
include "koneksi.php";
$username = $_POST['username'];
$pass = $_POST['pass'];
$passulang = $_POST['passulang'];
$email = $_POST['email'];
$nama = $_POST['nama'];
$level = "user";

if ($pass == $passulang) {
    $sql = "INSERT INTO user (username,password,nama,email,level) 
    VALUES ('" . $username . "','" . $pass . "','" . $email . "','" . $nama ."','" . $level ."')";
    $a=$koneksi->query($sql);
    if($a==true){
        echo "<script>
        alert('Anda sukses registrasi')
        location='login.html';
        </script>";
        
    } else {
    echo "
    <script>
    alert('error');
    </script>";
    }
}else {
    echo "<script>
    alert('Ulangi, password anda tidak sama')
    </script>";
    
}

?>