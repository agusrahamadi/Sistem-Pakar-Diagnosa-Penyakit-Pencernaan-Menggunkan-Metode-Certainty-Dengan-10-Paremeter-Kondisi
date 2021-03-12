<?php
$server ='localhost';
$user   ='u8110790_db_pencernaan';
$password ='metalbest149';
$database ='u8110790_db_pencernaan';

$mysqli = mysqli_connect($server, $user, $password, $database) or (mysqli_error($mysqli));
if (mysqli_connect_errno($mysqli)){
    echo 'koneksi ke databese belum berhasil'. mysqli_errno($mysqli);
    
}
 else {
   // echo 'Koneksi Berhasil';
}
