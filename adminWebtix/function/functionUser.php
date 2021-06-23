<?php
$con = mysqli_connect("localhost","root","","webtix");

function query ($query){
    global $con;
    $result = mysqli_query($con, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}
function tambah($data){
    global $con;
    $nama = htmlspecialchars($data["nama"]);
    $email = htmlspecialchars($data["email"]);
    $pw = password_hash($data["password"], PASSWORD_DEFAULT);
    $code = md5($email.date('Y-m-d'));

    $query = "INSERT INTO datauser (nama,email,password,verif_code)
                VALUES('$nama','$email','$pw','$code')" ;
    mysqli_query($con, $query);

    return mysqli_affected_rows($con);
}
function hapus($id){
    global $con;
    mysqli_query($con, "DELETE FROM datauser WHERE IdUser = $id");
    return mysqli_affected_rows($con);
}
function ubah($data){
    global $con;
    $id = $data["id"];
    $nama = htmlspecialchars($data["nama"]);
    $email = htmlspecialchars($data["email"]);
    $pw = password_hash($data["password"], PASSWORD_DEFAULT);
    echo $id;
    $query = "UPDATE datauser SET nama='$nama',
                email = '$email', password = '$pw'
                WHERE IdUser = $id " ;
    mysqli_query($con, $query);

    return mysqli_affected_rows($con);
}
function cari($keyword){
    $query = "SELECT * FROM datauser WHERE
                IdUser LIKE '%$keyword%'OR
                nama LIKE '%$keyword%' OR
                email LIKE '%$keyword%'OR
                verif_code LIKE '%$keyword%'OR
                poin LIKE '%$keyword%'";
    return query($query);
}
