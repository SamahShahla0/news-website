<?php
 header('Access-Control-Allow-Origin: *'); 
 header("Access-Control-Allow-Credentials: true");
 header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
 header('Access-Control-Max-Age: 1000');
 header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');

include("connection.php");

$query = $mysqli->prepare("SELECT * FROM categories");
$query->execute();
$array = $query->get_result();

$response = [];

while($a = $array->fetch_assoc()){
    $response[] = $a;
}

foreach ($response as $key => $value) {
   
    $query = $mysqli->prepare("SELECT * FROM news WHERE category = ? order by date desc");
    $query->bind_param("s", $value['id'] );
    $query->execute();
    $array = $query->get_result();
    
    $a = $array->fetch_all();
    $response[$key]['news'] = $a;
    
}
$json = json_encode($response);
echo $json;

?>