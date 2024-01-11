<?php
    
    include('connect.php');
    $sql ="select * from cricketers";
    
    $r = mysqli_query($con,$sql);
    $response = array();
    
    while($row = mysqli_fetch_array($r))
    {
        $value["id"] = $row["id"];
        $value["c_name"] = $row["c_name"];
        $value["c_image"] = $row["c_image"];
        $value["c_country"] = $row["c_country"];
        
        array_push($response,$value);
    }
    
    echo json_encode($response);
    mysqli_close($con);
    

?>