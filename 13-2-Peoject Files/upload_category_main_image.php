<?php 
 include('../connection.php');

    $upload_path = 'Images/';

    $upload_url = 'https://'.$_SERVER['SERVER_NAME'] . "/flutter_project_morning/" . $upload_path;
	
    $name = $_REQUEST['name'];
    $category_name = $_REQUEST['data'];

    $fileinfo = pathinfo($_FILES["profile_pic"]["name"]);

    $extension = $fileinfo["extension"];

    $random = 'image_' . rand(1000,9999);

    $file_url = $upload_url . $random . '.' . $extension;

    $file_path = $upload_path . $random . '.'. $extension; 
    
    $profile_pic = "https://topsapi.000webhostapp.com//flutter_project_morning/";
    
    move_uploaded_file($_FILES["profile_pic"]["tmp_name"],$file_path);
    
    $insert = "INSERT INTO Category (category_name,category_img) VALUES ('$category_name','$profile_pic$file_path')";
    $result=mysqli_query($con,$insert);
?>