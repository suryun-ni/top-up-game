<?php
session_start();
include "koneksi.php";
if (isset($_POST['login'])) {
    $user = $_POST['username'];
    $pass = $_POST['pass'];
    $data_user = mysqli_query($koneksi, 
    "SELECT * FROM  user where username = '$user' AND password ='$pass' ");
    $r = mysqli_fetch_array($data_user);
    $username = $r['username'];
    $password = $r['password'];
    $level = $r['level'];
    if ($user == $username && $pass == $password) {
        $_SESSION['username'] = $username;
        $_SESSION['id_user'] = $r['id_user'];
        $_SESSION['nama'] = $r['nama'];
        $_SESSION['email'] = $r['email'];
        $_SESSION['level'] = $level;
       if ($level=='admin') {
           header("location:admin.php");
       }else if($level == 'user'){
           header("location:user.php");
       }


    }else {
        echo "
<script>
alert('error');
</script>";
}
}else {
    echo "<script>
    alert('error');
    </script>";
}


?>