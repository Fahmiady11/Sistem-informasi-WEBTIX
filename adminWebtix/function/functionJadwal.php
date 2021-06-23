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
    mysqli_query($con, "DELETE FROM jadwal WHERE KodeJadwal = $id");
    return mysqli_affected_rows($con);
}
function ubah($data)
{
    global $con;
    $kodeJadwal = htmlspecialchars($data["kodeJadwal"]);
    $kodeFilm = htmlspecialchars($data["kodeFilm"]);
    $tanggalTayang = htmlspecialchars($data["tglTayang"]);
    $jamTayang = htmlspecialchars($data["jamTayang"]);
    $harga = htmlspecialchars($data["harga"]);
    $query = "UPDATE jadwal SET 
                KodeFilm='$kodeFilm',
                TglTayang='$tanggalTayang',
                JamTayang='$jamTayang',
                harga='$harga'
                WHERE KodeJadwal  = '$kodeJadwal'";
    $coba = mysqli_query($con, $query);
    var_dump($coba, $kodeFilm, $kodeJadwal, $tanggalTayang, $jamTayang, $harga);
    return mysqli_affected_rows($con);
}
function cari($keyword)
{
    $query = "SELECT * FROM jadwal WHERE
                KodeJadwal LIKE '%$keyword%'OR
                KodeFilm LIKE '%$keyword%' OR
                TglTayang LIKE '%$keyword%'OR
                harga LIKE '%$keyword%'OR
                JamTayang LIKE '%$keyword%'";
    return query($query);
}
