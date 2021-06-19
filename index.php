<?php
//set connection
$db = mysqli_connect("localhost","root1","root1234","motorsdatabase",3325);
//check connection
if(mysqli_connect_errno()):
    printf("Connection failed: %s\n", mysqli_connect_errno());
    exit();
  endif;
  


  $motor1 = $_POST['motor1'];
  $motor2 = $_POST['motor2'];
  $motor3 = $_POST['motor3'];
  $motor4 = $_POST['motor4'];
  $motor5 = $_POST['motor5'];
  $motor6 = $_POST['motor6'];


if(isset($_POST['save']))
{		
    
  
    $insert = mysqli_query($db, "select * from motor_angles_valyes WHERE 1");
    $insert = mysqli_query($db,"INSERT INTO motor_angles_valyes ('motor1', 'motor2','motor3','motor4','motor5','motor6') VALUES ('$motor1','$motor2','$motor3,'$motor4','$motor5','$motor6')");


    if(!$insert)
    {
        echo mysqli_error();
    }
    else
    {
        echo "Records added successfully.";
    }

}else if(isset($_POST['on'])) {
    
    $insert = mysqli_query($db, "select * from on_table WHERE 1");

    $insert = mysqli_query($db,"INSERT INTO on_table ('is_on') VALUES (1)");

    if(!$insert)
    {
        echo mysqli_error();
    }
    else
    {
        echo "Records added successfully.";
    }

}else if(isset($_POST['off'])) {
    
    $insert = mysqli_query($db, "select * from off_table WHERE 1");

    $insert = mysqli_query($db,"INSERT INTO off_table ('is_off') VALUES (0)");

    if(!$insert)
    {
        echo mysqli_error();
    }
    else
    {
        echo "Records added successfully.";
    }
}
mysqli_close($db); // Close connection
?>