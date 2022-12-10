<?php
$servername = "localhost";
$username = "prescott";
$password = "embryriddle";
$dbname = "teashas_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connected successfully\n";
}

// Call mysql stored prodecure with an argument
echo "You are in the Influence database." . "\n\n";

$manager_id = readline("Enter employee id: ");

$sql = "CALL viewProducts('$manager_id')";
  
$result = $conn->query($sql);
// Print the results as a table using echo
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "\nLogged in as manager #" . $row["manager_id"] . "\n\n";
        echo "product ID:  " . $row["product_id"] . "\n";
        echo "name:  " . $row["name"] . "\n";
        echo "quantity:  " . $row["quantity"] . "\n";
        echo "production date:  " . $row["production_date"] . "\n";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
