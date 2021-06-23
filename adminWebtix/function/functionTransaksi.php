<?php
$con = mysqli_connect("localhost", "root", "", "webtix");

function query($query)
{
    global $con;
    $result = mysqli_query($con, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}
function tambah($data)
{
    global $con;
    $kodeJadwal = htmlspecialchars($data["kodeJadwal"]);
    $kodeFilm = htmlspecialchars($data["kodeFilm"]);
    $tanggalTayang = htmlspecialchars($data["tglTayang"]);
    $jamTayang = htmlspecialchars($data["jamTayang"]);
    $harga = htmlspecialchars($data["harga"]);

    $query = "INSERT INTO jadwal VALUES
              ('$kodeJadwal','$kodeFilm','$tanggalTayang','$jamTayang','$harga')";
    mysqli_query($con, $query);

    return mysqli_affected_rows($con);
}
function hapus($id)
{
    global $con;
    mysqli_query($con, "DELETE FROM transaksi WHERE IdTrans = $id");
    return mysqli_affected_rows($con);
}
function ubah($data)
{
    global $con;
    $IdTrans = htmlspecialchars($data["idTrans"]);
    $status = htmlspecialchars($data["status"]);
    $query = "SELECT JumlahTiket,IdUser FROM transaksi 
                WHERE IdTrans= '$IdTrans'";
    $tiket = mysqli_fetch_assoc( mysqli_query($con, $query) );
    $iduser = $tiket["IdUser"];
    $query = "SELECT poin FROM datauser
                WHERE IdUser= '$iduser'";
    $user = mysqli_fetch_assoc( mysqli_query($con, $query) );
    $query = "UPDATE transaksi SET 
                StatusTrans='$status'
                WHERE IdTrans= '$IdTrans'";
    $coba = mysqli_query($con, $query);
    if ($coba) {
        $poin = 10*$tiket["JumlahTiket"]+$user["poin"];
        $query = "UPDATE datauser SET 
                poin='$poin'
                WHERE IdUser='$iduser'";
        $uppoin = mysqli_query($con, $query);
    }
    return mysqli_affected_rows($con);
}
function cari($keyword)
{
    $query = "SELECT * FROM transaksi WHERE
                IdTrans LIKE '%$keyword%'OR
                IdUser LIKE '%$keyword%' OR
                KodeJadwal LIKE '%$keyword%'OR
                JumlahTiket LIKE '%$keyword%'OR
                poin LIKE '%$keyword%' OR
                StatusTrans LIKE '%$keyword%'";
    return query($query);
}
