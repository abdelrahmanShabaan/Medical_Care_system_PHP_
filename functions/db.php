<?php 
 
$server = 'localhost';
$username = "root";
$password = "";
$dbname = "medical_ser";

$conn = mysqli_connect($server , $username , $password , $dbname);

if(!$conn)
{
    die ("problem to connect to database" . mysqli_connect_error());

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



// get row from databse 

function getRow($table , $field , $value) 

{
        global $conn;
        $sql = "SELECT * FROM `$table` WHERE `field` = '$value' ";
        $result = mysqli_query($conn , $sql);

        if($result) 
        {
            $rows = [];

            if(mysqli_num_rows($result))
            {
                $rows[] = mysqli_fetch_assoc($result);
                return $rows[0];

            }

        }
        return false;

}