<?php
require("./conn.php");


$name = $_POST['name'];
$description = $_POST['description'];
$price = $_POST['price'];
$image = $_FILES['image']['name'];
$category = $_POST['category'];

$dir_subida = '../upload/';
$fichero_subido = $dir_subida . basename($_FILES['image']['name']);

if (move_uploaded_file($_FILES['image']['tmp_name'], $fichero_subido)) {
    $query = "INSERT INTO productos(name,description,price,image,category) VALUES ('$name', '$description',$price,'$image','$category')";
    $send = mysqli_query($conn, $query);
    if ($send) {
        header("Location: https://mercadoscampesinosdelmeta.com/cms/forms");
    } else {
        echo "error";
    }
} else {
    echo "¡Posible ataque de subida de ficheros!\n";
}
