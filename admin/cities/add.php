<?php require '../../config.php'; ?>
<?php require BLA . 'inc/header.php';?>
<?php require BL . 'functions/vaildate.php';?>


<?php 

        if(isset($_POST['submit']))
        {
            $name = $_POST['name'];

            if(checkEmpty($name) && checkLess($name , 3))
            {
                $sql = "Insert INTO cities (`city_name`)
                VALUES ('$name')";
                $success_message = db_insert($sql);

            }else 
            {
                $error_message = "please Fill All field";
            }





            require BL .'functions/messages.php';
        }



?>

<div class="col-sm-6 offset-sm-3 border p-3">
        <h3 class="text-center p-3 bg-primary text-white">Add New City</h3>
        <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <div class="form-group">
                <label >Name Of City</label>
                <input type="text" name="name" class="form-control" >
            </div>
            
            <button type="submit" name="submit" class="btn btn-success">Save</button>
        </form>
       
    </div>


<?php require BLA. 'inc/footer.php' ?>