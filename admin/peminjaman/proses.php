<?php
 require '../../koneksi/koneksi.php';

if($_GET['id'] == 'konfirmasi')
{
    $data2[] = $_POST['status'];
    $data2[] = $_POST['id_pelayanan'];
    $sql2 = "UPDATE `pelayanan` SET `status`= ? WHERE id_pelayanan= ?";
    $row2 = $koneksi->prepare($sql2);
    $row2->execute($data2);

    echo '<script>alert("Status Kostum di pinjam");history.go(-1);</script>'; 
}