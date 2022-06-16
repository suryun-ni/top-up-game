<?php
    session_start();
    if(isset($_GET['id_produk'])){
        $id= $_GET['id_produk'];
    }
    else {
        die ("Error. No ID Selected!");    
    }
    ?>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/plyr.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   <!-- Header Section Begin -->
   <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.php">
                        <img src="img/Tengku-logos2.jpeg" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active"><a href="./index.php">Homepage</a></li>
                                <li><a href="#">Categories <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="./komputer.php">Komputer</a></li>
                                        <li><a href="./handphone.php">Handphone</a></li>
                                        <li><a href="./lainnya.php">Lainnya</a></li>
                                        <li><a href="./signup.php">Sign Up</a></li>
                                        <li><a href="./user.php">Login</a></li>
                                    </ul>
                                </li>
                                <li><a href="./blog.php">Our Blog</a></li>
                                
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="header__right">
                        <a href="./user.php"><span class="icon_profile"></span></a>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.php"><i class="fa fa-home"></i> Home</a>
                        <a href="./categories.php">Categories</a>
                        <span>Top Up</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                    <?php
                                    include "Koneksi.php";
                                    $a = "SELECT * from produk_game
                                    INNER JOIN game ON produk_game.id_game = game.id_game 
                                    INNER JOIN top_up ON produk_game.id_top_up = top_up.id_top_up WHERE id_produk = '$id'
                                    ";
                            $b = $koneksi->query($a);
                            while ($c=$b->fetch_array()) {
                            
                                    ?>
                                    
                <div class="row">
                    <div class="col-lg-3">
                        
                            
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3><?php echo $c['nama_game'] ?></h3>
                                
                            </div>
                            <?php
                            $d = "SELECT * from produk_game  LEFT JOIN game USING(id_game)
                                    WHERE id_produk= '$id'";
                                    $e = $koneksi->query($d);
                                    while ($f=$e->fetch_array()) {
                                    
                                        ?>
                            
                            
                            <?php
                                        $spek ="SELECT * from top_up  WHERE id_top_up = '$f[id_top_up]'";
                                        $g = $koneksi->query($spek);
                                        while ($h=$g->fetch_array()) {
                                            $username=$_SESSION["username"];
                                            $id_user=$_SESSION["id_user"];
                                    ?>
                                    
                                        <p>Username : <?php echo $username ?></p>
                                        <p>Jenis Top Up : <?php echo $h['jenis_top_up'] ?> </p>
                                        <p>harga Top Up : <?php echo $h['harga_top_up'] ?> Rupiah</p>
                                        <p>Keterangan : 
                                        <form  method="post">
                                              <ul>
                                                <li>
                                              <textarea name="keterangan" id="keterangan" cols="50" rows="5" placeholder="Masukkan Keterangan"></textarea>  
                                                </li>
                                              <li>
                                              <button type="submit" name="submit" class="watch-btn">Bayar</button>
                                              
                                              </li>  
                                              </ul>
                                              
                                        </form>

                                       
                                        <?php } ?>
                            
                            <?php } ?>
                           
                        </div>
                    </div>
                </div>
                <?php } ?>
               
            </div>
        </section>
        <!-- Anime Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer">
            <div class="page-up">
                <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="footer__logo">
                            <a href="./index.php"><img src="img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="footer__nav">
                            <ul>
                                <li class="active"><a href="./index.php">Homepage</a></li>
                                <li><a href="./categories.php">Categories</a></li>
                                <li><a href="./blog.php">Our Blog</a></li>
                                <li><a href="#">Contacts</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                          Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

                      </div>
                  </div>
              </div>
          </footer>
          <!-- Footer Section End -->

          <!-- Search model Begin -->
          <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch"><i class="icon_close"></i></div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Search here.....">
                </form>
            </div>
        </div>
        <!-- Search model end -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/player.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>


        <!-- ini Aksi Input detil_bayar                                             -->
        <?php

            $id_produk = $id;
            $keterangan = $_POST['keterangan'];
            if (isset($_POST['submit'])) {
                $insert_detil_bayar = "INSERT INTO detil_bayar (id_user, id_produk, keterangan) 
                 VALUES ('" . $id_user . "','" . $id_produk . "','" . $keterangan ."'); ";
            if (mysqli_query($koneksi, $insert_detil_bayar)) {
                echo "<script> 
                alert('Pesanan Berhasil di Proses');
                window.location.href = 'pembayaran.php?id=$id_produk';
            </script> ";
          } else {
                echo "Error: " . $insert_detil_bayar . "<br>" . mysqli_error($koneksi);
          }
         
        }
            ?>
                                            
    </body>

</html>