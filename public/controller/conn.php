<?php 
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Allow: GET, POST, OPTIONS, PUT, DELETE");
//"localhost", "mercados_admin", "mercados123", "mercados_DB"
$conn = mysqli_connect("localhost", "root", "password", "DB_mercadocampesino");
mysqli_set_charset($conn, "utf8"); //formato de datos utf8

?>
