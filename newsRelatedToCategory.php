<?php
/*
Include CORS - how ? Allow Headers! 
*/

include("connection.php");

//$category_id = $_GET["$category_id"];
$category_id = $_GET["category_id"] ;

$query = $mysqli->prepare("SELECT * FROM news WHERE category = ? order by date desc");
$query->bind_param("s", $category_id );
$query->execute();
$array = $query->get_result();

$response = [];

while($a = $array->fetch_assoc()){
    $response[] = $a;
}

$json = json_encode($response);
echo $json;

?>
