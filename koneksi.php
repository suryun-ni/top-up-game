<html>
<head>
   
    <title>koneksi database</title>
</head>
<body>

   
  <?php 
  $host = "localhost";
  $username = "root";
  $password = "";
  $database = "uas";
  $koneksi = mysqli_connect($host,$username,$password,$database);
  echo "tes koneksi";
  
  
?>

</body>
</html>