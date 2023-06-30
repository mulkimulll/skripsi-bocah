<?php
    session_start();
    require 'koneksi/koneksi.php';
    include 'header.php';
    $id = strip_tags($_GET['id']);
    $hasil = $koneksi->query("SELECT * FROM pelayanan WHERE id_pelayanan = '$id'")->fetch();
?>
<div class="container mt-5">
<div class="row">
    <div class="col-sm-6">
        <img class="card-img-top w-100" 
            style="object-fit:cover;" 
            src="assets/image/<?php echo $hasil['gambar'];?>" alt="">
    </div>
    <div class="col-sm-6">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title"><?php echo $hasil['merk'];?></h4>
                <p class="card-text">
                    Deskripsi :
                    <?php echo $hasil['deskripsi'];?>
                </p>
                <ul class="list-group list-group-flush">
                    <?php if($hasil['status'] == 'Tersedia'){?>
                    <li class="list-group-item text-white" style="background-color: #bc4c86;">
                        <i class="fa fa-check"></i> Available
                    </li>
                    <?php }else{?>
                    <li class="list-group-item bg-danger text-white">
                        <i class="fa fa-close"></i> Not Available
                    </li>
                    <?php }?>
                    <li class="list-group-item bg-dark text-white"><i class="fa fa-check"></i> <?php echo $hasil['deskripsi']?></li>
                    <li class="list-group-item bg-danger text-white">
                         Rp. <?php echo number_format($hasil['harga']);?>
                    </li>
                </ul>
                <hr/>
                <center>
                    <a href="booking.php?id=<?php echo $hasil['id_pelayanan'];?>" class="btn btn-dark">Booking now!</a>
                    <a href="index.php" class="btn btn-ungu">Back</a>
                </center>
            </div>
         </div> 
    </div>
</div>
</div>


<?php include 'footer.php';?>