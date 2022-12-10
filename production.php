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
echo "You are in the Production database." . "\n";

$sql = "CALL return_on_investment()";
  
$result = $conn->query($sql);
// Print the results as a table using echo
if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    echo "\n";
    echo "product ID:  " . $row["product_id"] . "\n";
    echo "name:  " . $row["product_name"] . "\n";
    echo "THE RETURN ON INVESTMENT IS " . $row["ROI"] . " USD. \n"; 
  }
} else {
  echo "0 results";
}
$conn->close();
?>
