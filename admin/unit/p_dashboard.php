<?php
include("../admin/leftbar.php");
?>    
      
		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="adminmainapp.php?unit=dashboard">Beranda</a>
						</li>
					</ul><!-- /.breadcrumb -->
				</div>

				<div class="page-content">
					<div class="page-header">
						<h1>Beranda</h1>
					</div><!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<div class="alert alert-block alert-success">
								<button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button>
								<i class="ace-icon fa fa-bullhorn green"></i> Selamat Datang di Aplikasi Sistem Pakar Diagnosa Penyakit Pencernaan Menggunkan Metode Certainty
						</div>
						</div><!-- /.col -->
						<div class="col-xs-12 infobox-container">
		          <div class="infobox infobox-green">
		            <div class="infobox-icon"><i class="ace-icon fa fa-table"></i></div>
                             <?php
                $qproduk =" SELECT * FROM t_penyakit ";
                $rproduk = mysqli_query($mysqli, $qproduk);
                $dproduk = mysqli_num_rows($rproduk);
                echo "<div class='infobox-data'><span class='infobox-data-number'>$dproduk</span>";
                ?>
                
                
		              <div class="infobox-content">Data Penyakit</div>
		            </div>
		          </div>

		          <div class="infobox infobox-blue">
		            <div class="infobox-icon"><i class="ace-icon fa fa-table"></i></div>
		             <?php
                $qslider =" SELECT * FROM t_gejala ";
                $rslider = mysqli_query($mysqli, $qslider);
                $dslider = mysqli_num_rows($rslider);
                echo "<div class='infobox-data'><span class='infobox-data-number'>$dslider</span>";
                ?>
		              <div class="infobox-content">Data Gejala</div>
		            </div>
		          </div>

		          <div class="infobox infobox-pink">
		            <div class="infobox-icon"><i class="ace-icon fa fa-book"></i></div>
		           <?php
                $qkategori =" SELECT * FROM t_hasil ";
                $rkategori = mysqli_query($mysqli, $qkategori);
                $dkategori= mysqli_num_rows($rkategori);
                echo "<div class='infobox-data'><span class='infobox-data-number'>$dkategori</span>";
                ?> 
		              <div class="infobox-content">Data Konsultasi</div>
		            </div>
		          </div>

							<div class="infobox infobox-red">
		            <div class="infobox-icon"><i class="ace-icon fa fa-book"></i></div>
		<?php
                $qsubkategori =" SELECT * FROM t_diagnosa ";
                $rsubkategori = mysqli_query($mysqli, $qsubkategori);
                $dsubkategori= mysqli_num_rows($rsubkategori);
                echo "<div class='infobox-data'><span class='infobox-data-number'>$dsubkategori</span>";
                ?> 
		              <div class="infobox-content">Data Basis Pengetahuan</div>
		            </div>
		          </div>

							<div class="infobox infobox-orange">
		            <div class="infobox-icon"><i class="ace-icon fa fa-users"></i></div>
		        <?php
                $qbrand =" SELECT * FROM t_login where status ='pengguna' ";
                $rbrand = mysqli_query($mysqli, $qbrand);
                $dbrand= mysqli_num_rows($rbrand);
                echo "<div class='infobox-data'><span class='infobox-data-number'>$dbrand</span>";
                ?> 
		              <div class="infobox-content">Data Pengguna</div>
		            </div>
		          </div>
            
							<div class="infobox infobox-red">
		            <div class="infobox-icon"><i class="ace-icon fa fa-user"></i></div>
		<?php
                $qblog =" SELECT * FROM t_login where status ='admin'";
                $rblog = mysqli_query($mysqli, $qblog);
                $dblog = mysqli_num_rows($rblog);
                echo "<div class='infobox-data'><span class='infobox-data-number'>$dblog</span>";
                ?> 
		              <div class="infobox-content">Data Admin</div>
		            </div>
		          </div>

						
		            </div> 
					
					</div><!-- /.row -->
				</div><!-- /.page-content -->
			</div>
		</div><!-- /.main-content -->
            <?php
            include("../admin/footer.php");
            ?>    
	</body>
</html>

