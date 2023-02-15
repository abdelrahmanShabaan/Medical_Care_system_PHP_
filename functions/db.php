<?php 
 
$server = 'localhost';
$username = "root";
$password = "";
$dbname = "medical_ser";

$conn = mysqli_connect($server , $username , $password , $dbname);

if(!$conn)
{
    die ("problem to connect to database" . mysqli_connect_error());

}else {

    echo "connect successfully";
}


function db_insert($sql) {

    global $conn;
    
    $result = mysqli_query($conn , $sql);

    if($result)
    {
        return "Added success";
    }
    return false;
}