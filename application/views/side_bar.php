<div class="left_col scroll-view">

                    <div class="navbar nav_title" style="border: 0;">
                        <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Fruit Shop!</span></a>
                    </div>
                    <div class="clearfix"></div>

                    <!-- menu prile quick info -->
                    <div class="profile">
                        <a href="<?php echo base_url() ?>admin/profile">
                        <div class="profile_pic">
                            <img src="<?php echo base_url() ?>assets/images/user.png" alt="..." class="img-circle profile_img">
                        </div>
                        <div class="profile_info">
                            <span>Welcome,</span>
                            <h2><?php echo $this->session->userdata('username') ?></h2>
                        </div>
                            </a>
                    </div>
                    <!-- /menu prile quick info -->

                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                            <h3>General</h3>
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="<?php echo base_url() ?>trx/dasboard">Dashboard</a>
                                        </li>
                                      <!--   <li><a href="index2.html">Dashboard2</a>
                                        </li>
                                        <li><a href="index3.html">Dashboard3</a>
                                        </li> -->
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-edit"></i> Supplier<span class="fa fa-chevron-down"></span> </a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="<?php echo base_url() ?>supplier/create">Create New</a>
                                        </li>
                                        <li><a href="<?php echo base_url() ?>supplier/pemasok">List Pemasok</a>
                                        </li>
                                        <li><a href="<?php echo base_url() ?>supplier/pembeli">List Pembeli</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-user"></i> Karyawan <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        
                                        <li><a href="<?php echo base_url() ?>employee/create">Buat Karyawan Baru</a>
                                        </li>
                                        <li><a href="<?php echo base_url() ?>employee">List Karyawan</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-user"></i> Produk <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        
                                        <li><a href="<?php echo base_url() ?>produk/create">Buat Produk Baru</a>
                                        </li>
                                        <li><a href="<?php echo base_url() ?>produk">Daftar Produk</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-envelope"></i>  Transaksi<span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="<?php echo base_url() ?>trx/create"> Create New</a>
                                        </li>
                                        <li><a href="<?php echo base_url() ?>trx/purchaseRequest"> Daftar Penjualan</a>
                                        </li>
                                        <!-- <li><a href="<?php echo base_url() ?>trx/preDeliveryOrder"> Pre Delivery Order</a>
                                        </li> -->
                                        <li><a href="<?php echo base_url() ?>trx/deliveryOrder"> Delivery Order</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-envelope"></i>  Retur<span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="<?php echo base_url() ?>retur/index"> Daftar Retur</a>
                                        </li>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- <div class="menu_section">
                            <h3>Payment</h3>
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-bug"></i> Laporan <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="e_commerce.html"> Buat Faktur Pembayaran</a>
                                        </li>
                                        <li><a href="projects.html"> Lihat Hutang Customer</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="page_404.html">404 Error</a>
                                        </li>
                                        <li><a href="page_500.html">500 Error</a>
                                        </li>
                                        <li><a href="plain_page.html">Plain Page</a>
                                        </li>
                                        <li><a href="login.html">Login Page</a>
                                        </li>
                                        <li><a href="pricing_tables.html">Pricing Tables</a>
                                        </li>

                                    </ul>
                                </li>
                                <li><a><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a>
                                </li>
                            </ul>
                        </div> -->

                    </div>
                    <!-- /sidebar menu -->

                    <!-- /menu footer buttons -->
                    <div class="sidebar-footer hidden-small">
                        <a data-toggle="tooltip" data-placement="top" title="Settings">
                            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="Lock">
                            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                        </a>
                        <a href="<?php echo base_url() ?>admin/logout" data-toggle="tooltip" data-placement="top" title="Logout">
                            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!-- /menu footer buttons -->
                </div>