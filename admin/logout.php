<?php require_once '../config.php'; ?>

<?php 
    if(isset($_SESSION['admin_name']))
    {
        session_destroy();
        header("location:". BURLA . 'login.php');
    }
    else 
    {
        header("location:". BURL);

    }

?>