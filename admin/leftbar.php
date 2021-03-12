<div id="sidebar" class="sidebar responsive ace-save-state">
  <ul class="nav nav-list">
      <?php
                                if ($_SESSION['status'] == "admin"){
                                    ?>
    <li <?php if ($page=='dashboard') {echo $active;}?>>
        <a href="adminmainapp.php?unit=dashboard">
        <i class="menu-icon fa fa-home"></i>
        <span class="menu-text"> Beranda </span>
      </a>

      <b class="arrow"></b>
    </li>
        
   

    <!-- kategori -->
    <li  <?php if ($page=='penyakit_unit' or $page=='gejala_unit' or $page=='tentangpenyakit_unit') {echo $open;}?>>
      <a href="#" class="dropdown-toggle">
        <i class="menu-icon fa fa-table"></i>
        <span class="menu-text"> Data Master </span>
        <b class="arrow fa fa-angle-down"></b>
      </a>
      <b class="arrow"></b>
      <ul class="submenu">
        <li <?php if ($page=='penyakit_unit' && $act1=='datagrid') {echo $active;}?>>
          <a href="adminmainapp.php?unit=penyakit_unit&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Data Penyakit</a>
          <b class="arrow"></b>
        </li>
		<li <?php if ($page=='gejala_unit' && $act1=='datagrid') {echo $active;}?>>
          <a href="adminmainapp.php?unit=gejala_unit&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Data Gejala</a>
          <b class="arrow"></b>
        </li>
		<li <?php if ($page=='tentangpenyakit_unit' && $act1=='datagrid') {echo $active;}?>>
          <a href="adminmainapp.php?unit=tentangpenyakit_unit&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Data Tentang Penyakit</a>
          <b class="arrow"></b>
        </li>
      </ul>
    </li>

    <!-- subkategori -->
    <li  <?php if ($page=='dbp_unit' or $page=='konsultasi_unit') {echo $open;}?>>
      <a href="#" class="dropdown-toggle">
        <i class="menu-icon fa fa-book"></i>
        <span class="menu-text"> Data Transaksi </span>
        <b class="arrow fa fa-angle-down"></b>
      </a>
      <b class="arrow"></b>
      <ul class="submenu">
        
        <li <?php if ($page=='konsultasi_unit' && $act1=='datagrid') {echo $active;}?>>
          <a href="adminmainapp.php?unit=konsultasi_unit&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Data Konsultasi</a>
          <b class="arrow"></b>
		  <li <?php if ($page=='dbp_unit' && $act1=='datagrid') {echo $active;}?>>
          <a href="adminmainapp.php?unit=dbp_unit&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Data Basis Pengetahuan</a>
          <b class="arrow"></b>
        </li>
		 </li>
      </ul>
    </li>

    <!-- Brand -->
    <li <?php if ($page=='l_penyakit' or $page=='l_gejala' or $page=='l_dbp') {echo $open;}?>>
      <a href="#" class="dropdown-toggle">
        <i class="menu-icon fa fa-file"></i>
        <span class="menu-text"> Laporan </span>
        <b class="arrow fa fa-angle-down"></b>
      </a>
      <b class="arrow"></b>
      <ul class="submenu">
        
         <li <?php if ($page=='l_penyakit' && $act1=='input') {echo $active;}?>>
          <a href="adminmainapp.php?unit=l_penyakit&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Laporan Data Penyakit</a>
          <b class="arrow"></b>
        </li>
		 <li <?php if ($page=='l_gejala' && $act1=='input') {echo $active;}?>>
          <a href="adminmainapp.php?unit=l_gejala&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Laporan Data Gejala</a>
          <b class="arrow"></b>
        </li>
		 <li <?php if ($page=='l_dbp' && $act1=='input') {echo $active;}?>>
          <a href="adminmainapp.php?unit=l_dbp&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Lapoaran Data Basis Pengetahuan</a>
          <b class="arrow"></b>
        </li>
      </ul>
    </li>

     <!-- Use -->
    <li <?php if ($page=='pengguna_unit') {echo $open;}?>>
      <a href="#" class="dropdown-toggle">
        <i class="menu-icon fa fa-users"></i>
        <span class="menu-text"> Pengguna </span>
        <b class="arrow fa fa-angle-down"></b>
      </a>
      <b class="arrow"></b>
      <ul class="submenu">
        <li <?php if ($page=='pengguna_unit' && $act1=='datagrid') {echo $active;}?>>
          <a href="adminmainapp.php?unit=pengguna_unit&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Data Pengguna</a>
          <b class="arrow"></b>
        </li>
      </ul>
    </li>
	
    <!-- Use -->
    <li <?php if ($page=='admin_unit') {echo $open;}?>>
      <a href="#" class="dropdown-toggle">
        <i class="menu-icon fa fa-user"></i>
        <span class="menu-text"> Admin </span>
        <b class="arrow fa fa-angle-down"></b>
      </a>
      <b class="arrow"></b>
      <ul class="submenu">
        <li <?php if ($page=='admin_unit' && $act1=='datagrid') {echo $active;}?>>
          <a href="adminmainapp.php?unit=admin_unit&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Data Admin</a>
          <b class="arrow"></b>
        </li>
        </ul>
    </li>
	

    <?php
                                }
                                else {
                                     ?>
<li <?php if ($page=='p_dashboard') {echo $active;}?>>
        <a href="adminmainapp.php?unit=p_dashboard">
        <i class="menu-icon fa fa-home"></i>
        <span class="menu-text"> Beranda </span>
      </a>

      <b class="arrow"></b>
    </li>
	
<li <?php if ($page=='p_gejala_unit') {echo $open;}?>>
      <a href="#" class="dropdown-toggle">
        <i class="menu-icon fa fa-search-plus""></i>
        <span class="menu-text"> Konsultasi </span>
        <b class="arrow fa fa-angle-down"></b>
      </a>
      <b class="arrow"></b>
      <ul class="submenu">
       <li <?php if ($page=='p_gejala_unit' && $act1=='input') {echo $active;}?>>
          <a href="adminmainapp.php?unit=p_gejala_unit&act=input"><i class="menu-icon fa fa-caret-right"></i>Konsultasi</a>
          <b class="arrow"></b>
        </li>
        </ul>
    </li>
	
	 <li <?php if ($page=='p_penyakit_unit' or $page=='p_cf_unit') {echo $open;}?>>
      <a href="#" class="dropdown-toggle">
        <i class="menu-icon fa fa-info"></i>
        <span class="menu-text"> Tentang </span>
        <b class="arrow fa fa-angle-down"></b>
      </a>
      <b class="arrow"></b>
      <ul class="submenu">
       <li <?php if ($page=='p_penyakit_unit' && $act1=='datagrid') {echo $active;}?>>
          <a href="adminmainapp.php?unit=p_penyakit_unit&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Penyakit</a>
          <b class="arrow"></b>
        </li>
		<li <?php if ($page=='p_cf_unit' && $act1=='datagrid') {echo $active;}?>>
          <a href="adminmainapp.php?unit=p_cf_unit&act=datagrid"><i class="menu-icon fa fa-caret-right"></i>Certainty Factor</a>
          <b class="arrow"></b>
        </li>
        </ul>
    </li>
    
   
    

     <?php
                                }
                                ?>
        <!-- logout -->
    <li>
        <a href="logout.php">
        <i class="menu-icon fa fa-power-off"></i>
        <span class="menu-text"> Keluar </span>
      </a>

      <b class="arrow"></b>
    </li>
  </ul><!-- /.nav-list -->

  <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
    <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
  </div>
</div>
