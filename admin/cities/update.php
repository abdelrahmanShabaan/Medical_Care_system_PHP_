<?php require '../../config.php';  ?>

<?php require BLA.'inc/header.php';  ?>
<?php require BL . 'functions/vaildate.php';?>



<?php 

        if(isset($_POST['submit']))
        {
            $name = $_POST['name'];
            $city_id = $_POST['city_id'];

            if(checkEmpty($name) && checkLess($name , 3))
            {
                $row = getRow('cities' , 'city_id' , $city_id);
                
                if($row)
                {
                    $sql = "UPDATE cities SET `city_name`='$name' WHERE `city_id`= '$city_id' ";
                    $success_message = db_update($sql);
                    header( "refresh:2;url=".BURLA."cities");

                }
                else 
                {
                    $error_mess = "please Type correct Data";
                }
              
                }
                else
                {
                    $error_mess = "please Fill all field";

                }
            require BL .'functions/messages.php';
        }

        



?>



<?php require BLA.'inc/footer.php';  ?>