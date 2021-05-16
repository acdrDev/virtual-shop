<?php 
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");

$conn = mysqli_connect("localhost", "root", "password", "DB_mercadocampesino");
mysqli_set_charset($conn, "utf8"); //formato de datos utf8
$query = "SELECT * FROM productos";
$data = mysqli_query($conn, $query);
$row = mysqli_num_rows($data);
$products = array();

if ($row == 0) {
    echo "no hay datos";
}

if ($row != 0) {
    while ($product = mysqli_fetch_assoc($data)) {
        $price = (int) $product['price'];
        $id = (int) $product['id'];
        $products[] = array('id' => $id, 'name' => $product['name'], 'description' => $product['description'], 'price' => $price, 'image' => $product['image'],'category' => $product['category']);
    }
    $json = json_encode($products);
    echo $json;
}

?>