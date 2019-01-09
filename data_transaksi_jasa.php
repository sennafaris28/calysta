<?php include('header.php'); ?>

<div class="container" style="margin-top: 20px;">
    <div class="row align-items-start">
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th scope="col">ID Transaksi</th>
                    <th scope="col">ID Customer</th>
                    <th scope="col">ID Jasa</th>
                    <th scope="col">Tanggal</th>
                    <th scope="col">Option</th>
                </tr>
            </thead>
            <tbody>
                <?php
															$sql = "SELECT * FROM tx_jasa";
															$result = pg_query($db, $sql);
															while ($row = pg_fetch_assoc($result)) {
																echo "<tr>
	      <th>{$row['id_transaksi']}</th>
	      <td>{$row['id_pelanggan']}</td>
	      <td>{$row['id_jasa']}</td>
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