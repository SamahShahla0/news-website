<?php
/*
Include CORS - how ? Allow Headers! 
*/

include("connection.php");

//$category_id = $_GET["$category_id"];
$news_id = $_GET["news_id"] ;

$query = $mysqli->prepare("SELECT * FROM news WHERE id = ?");
$query->bind_param("s", $news_id );
$query->execute();
$array = $query->get_result();

$response = [];

while($a = $array->fetch_assoc()){
    $response[] = $a;
}

$json = json_encode($response);
echo $json;

?>