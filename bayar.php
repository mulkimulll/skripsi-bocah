<?php
    session_start();
    require 'koneksi/koneksi.php';
    include 'header.php';
    if(empty($_SESSION['USER']))
    {
        echo '<script>alert("Harap login !");window.location="index.php"</script>';
    }
    $kode_booking = $_GET['id'];
    $hasil = $koneksi->query("SELECT * FROM booking WHERE kode_booking = '$kode_booking'")->fetch();

    $id = $hasil['id_pelayanan'];
    $isi = $koneksi->query("SELECT * FROM pelayanan WHERE id_pelayanan = '$id'")->fetch();

    $unik  = random_int(100,999);
    
?>
<br>
<br>
<div class="container">
<div class="row">
    <div class="col-sm-4">

        <div class="card">
            <div class="card-body text-center">
                <h5>Pembayaran Dapat Melalui :</h5>
                <hr/>
                <p> <?= $info_web->no_rek;?> </p>
            </div>
        </div>
        <br/>
        <div class="card">
                <div class="card-body" style="background:#ddd">
                <h5 class="card-title"><?php echo $isi['merk'];?></h5>
                </div>
                <ul class="list-group list-group-flush">

                <?php if($isi['status'] == 'Tersedia'){?>

                    <li class="list-group-item text-white" style="background-color: #bc4c86;">
                        <i class="fa fa-check"></i> Available
                    </li>

                <?php }else{?>

                    <li class="list-group-item bg-danger text-white">
                        <i class="fa fa-close"></i> Not Available
                    </li>

                <?php }?>
            
            
                <li class="list-group-item bg-dark text-white"><i class="fa fa-check"></i> <?php echo $isi['deskripsi']?></li>
                <li class="list-group-item bg-danger text-white">
                     Rp. <?php echo number_format($isi['harga']);?>
                </li>
                </ul>
            </div>
    </div>
    <div class="col-sm-8">
         <div class="card">
           <div class="card-body">
                    <table class="table">
                        <tr>
                            <td>Kode Booking  </td>
                            <td> :</td>
                            <td><?php echo $hasil['kode_booking'];?></td>
                        </tr>
                        <tr>
                            <td>Nama  </td>
                            <td> :</td>
                            <td><?php echo $hasil['nama'];?></td>
                        </tr>
                        <tr>
                            <td>Telepon  </td>
                            <td> :</td>
                            <td><?php echo $hasil['no_tlp'];?></td>
                        </tr>
                        <tr>
                            <td>Tanggal Booking </td>
                            <td> :</td>
                            <td><?php echo $hasil['tanggal'];?></td>
                        </tr>
                        <tr>
                            <td>Jam </td>
                            <td> :</td>
                            <td><?php echo $hasil['jam'];?></td>
                        </tr>
                        <tr>
                            <td>Total Harga </td>
                            <td> :</td>
                            <td>Rp. <?php echo number_format($isi['harga']);?></td>
                        </tr>
                        <tr>
                            <td>Status </td>
                            <td> :</td>
                            <td><?php echo $hasil['konfirmasi_pembayaran'];?></td>
                        </tr>
                    </table>

                <?php if($hasil['konfirmasi_pembayaran'] == 'Belum Bayar'){?>
                    <a href="konfirmasi.php?id=<?php echo $kode_booking;?>" 
                    class="btn btn-dark float-right">Konfirmasi Pembayaran</a>
                <?php }?>
               
           </div>
         </div> 
    </div>
</div>
</div>
<br>
<br>
<br>

<?php include 'footer.php';?>