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
echo "You are in the Security database." . "\n\n";

$employee_id = readline("Enter employee id: ");

$sql = "CALL viewWeapon('$employee_id')";
  
$result = $conn->query($sql);
// Print the results as a table using echo
if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    echo "\nLogged in as employee #" . $row["employee_id"] . "\n\n";
    echo "service weapon:  " . $row["service_weapon"] . "\n";
    echo "ammo type:  " . $row["ammo_type"] . "\n";
    echo "pool:  " . $row["ammo_pool"] . "\n";
  }
} else {
  echo "0 results";
}
$conn->close();
?>
