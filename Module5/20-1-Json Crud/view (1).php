<?php
    include('connect.php');
        
    $select= "SELECT * FROM product_info";
    $result = mysqli_query($con,$select);
    
    $response= array();
         
    while ($row = mysqli_fetch_array($result))
    {
        $value = array();
        $value["id"] = $row["id"];
        $value["p_name"] = $row["p_name"];
        $value["p_price"] = $row["p_price"];
    
        array_push($response, $value);
    }
    echo json_encode($response);
?>