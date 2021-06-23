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
    $kode = htmlspecialchars($data["KodeFilm"]);
    $judul = htmlspecialchars($data["JudulFilm"]);
    $genre = htmlspecialchars($data["KodeGenre"]);
    $sinopsis = htmlspecialchars($data["Sinopsis"]);

    $query = "INSERT INTO film VALUES
              ($kode, '$judul',$genre,'$sinopsis')";
    mysqli_query($con, $query);

    return mysqli_affected_rows($con);
}
function hapus($id)
{
    global $con;
    mysqli_query($con, "DELETE FROM film WHERE KodeFilm = $id");
    return mysqli_affected_rows($con);
}
function ubah($data)
{
    global $con;
    $id = $data["id"];
    $kode = htmlspecialchars($data["KodeGenre"]);
    $judul = htmlspecialchars($data["JudulFilm"]);
    $sinopsis = htmlspecialchars($data["Sinopsis"]);
    echo $id;
    $query = "UPDATE film SET KodeGenre='$kode',
                JudulFilm = '$judul',Sinopsis = '$sinopsis'
                WHERE KodeFilm = $id ";
    mysqli_query($con, $query);

    return mysqli_affected_rows($con);
}
function cari($keyword)
{
    $query = "SELECT * FROM dataadmin WHERE
                IdAdmin LIKE '%$keyword%'OR
                NamaAdmin LIKE '%$keyword%'";
    return query($query);
}
