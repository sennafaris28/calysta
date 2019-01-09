<?php include('header.php'); ?>

<div class="container" style="margin-top: 20px;">
    <div class="row align-items-start">
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th scope="col">Tx_ID</th>
                    <th scope="col">Cust_ID</th>
                    <th scope="col">Nama</th>
                    <th scope="col">Product ID</th>
                    <th scope="col">Kode</th>
                    <th scope="col">Harga</th>
                    <th scope="col">Jumlah</th>
                    <th scope="col">Total</th>
                    <th scope="col">Tanggal</th>
                    <th scope="col">Option</th>
                </tr>
            </thead>
            <tbody>
                <?php
															$sql = "select id_transaksi, tx_produk.id_pelanggan,list_pelanggan.nama, tx_produk.id_produk, list_produk.kode, list_produk.harga,jumlah,list_produk.harga*jumlah as total,tanggal from tx_produk inner join list_produk on tx_produk.id_produk = list_produk.id_produk inner join list_pelanggan on tx_produk.id_pelanggan = list_pelanggan.id_pelanggan order by id_transaksi asc;";
															$result = pg_query($db, $sql);
															while ($row = pg_fetch_assoc($result)) {
																echo "<tr>
	      <th>{$row['id_transaksi']}</th>
	      <td>{$row['id_pelanggan']}</td>
	      <td>{$row['nama']}</td>
	      <td>{$row['id_produk']}</td>
	      <td>{$row['kode']}</td>
	      <td>{$row['harga']}</td>
	      <td>{$row['jumlah']}</td>
	      <td>{$row['total']}</td>
	      <td>{$row['tanggal']}</td>
	    "; ?>
                <td class="btn-group" role="group">
                    <a href="updatetableproduk.php?page=edit&no=<?php echo $row['no']; ?>" type="submit" class="btn btn-secondary btn-sm">Edit</a>
                    <a onclick="return confirm('Are you sure want to delete this data?') " href="?aksi=delete&no=<?php echo $row['no']; ?>"
                        type="submit" class="btn btn-secondary btn-sm">Delete</a>
                </td>
                <?php

														} ?>

            </tbody>
        </table>
    </div>
</div>
<?php
if (isset($_GET['page'])) {
	$page = $_GET['page'];
	if ($page == "edit") {
		include('updatetableproduk.php');
		header("Location: localhost/calysta/updatetableproduk.php");
	}
}
if (isset($_GET['aksi'])) {
	$aksi = $_GET['aksi'];
	if ($aksi == "delete") {
		include('delete.php');
	} else if ($aksi == "edit") {
		include('updatetableproduk.php');
		header("Location: localhost/calysta/updatetableproduk.php");
	}
}
include('footer.php');
?>