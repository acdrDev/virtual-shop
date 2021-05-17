<?php 
require("./conn.php");
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
