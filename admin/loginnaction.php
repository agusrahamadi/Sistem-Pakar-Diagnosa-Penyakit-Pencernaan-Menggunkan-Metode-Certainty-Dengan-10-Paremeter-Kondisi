<?php
session_start();
require_once '../lib/koneksi.php';
$nm_pengguna = $_POST['nm_pengguna'];
$password = md5($_POST['password']);



$qlogin =
"
   SELECT
    *
   FROM
    t_login
   WHERE
    nm_pengguna = '$nm_pengguna'
    AND
    katasandi = '$password'
";
$rlogin = mysqli_query($mysqli, $qlogin);
$jumlahbaris = mysqli_num_rows($rlogin);
if ($jumlahbaris > 0 ){
    $dlogin = mysqli_fetch_assoc($rlogin);
    $_SESSION['katasandi'] = $dlogin ['katasandi'];
    $_SESSION['nm_pengguna'] = $dlogin ['nm_pengguna'];
    $_SESSION['status'] = $dlogin ['status'];
        date_default_timezone_set("Asia/Brunei");
        $tanggalsekarang = date("Y-m-d H:i:s");
        $zupdate = 
                "
                UPDATE t_login SET
                jammasuk ='$tanggalsekarang'
                WHERE
                katasandi = '".$_SESSION['katasandi']."'
                ";  
      $rupdate = mysqli_query($mysqli,$zupdate);
    header('location:adminmainapp.php?unit=dashboard');
}
 else {
      $qdatagrid =" UPDATE t_login SET bataslogin = bataslogin + 1 where nm_pengguna='$nm_pengguna' ";
                            $rdatagrid = mysqli_query($mysqli, $qdatagrid);
                                
          
            $c =" SELECT bataslogin from t_login where nm_pengguna = '$nm_pengguna' ";
                            $r = mysqli_query($mysqli, $c);
                            $a = mysqli_fetch_assoc($r);



        $b = $a['bataslogin'];


        if ($b > 100000) {

        $mdatagrid =" UPDATE t_login SET blokir = 'Y' where nm_pengguna='$nm_pengguna' ";
                            $zdatagrid = mysqli_query($mysqli, $mdatagrid);

            echo "<script type=text/javascript>


              alert('nama pengguna $nm_pengguna Telah Di Blokir, Silahkan kirim Pesan Email ke admin@gmail.com untuk proses lebih lanjut');


              window.location = './'


              </script>";

        } else {


            echo "<script type=text/javascript>


              alert('nm_pengguna Atau Password Tidak Benar, Anda Sudah $b Kali Mencoba');


              window.location.href='./'


              </script>";


        }
    
}




?>