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
echo "You are in the Distribution database." . "\n";
$user_input = readline("Select a to view table; b to see runner out: ");

// user inputs a 
if ($user_input == 'a') {

  $sql = "CALL runner_in()";
    
  $result = $conn->query($sql);
  // Print the results as a table using echo
  if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
      echo "\n";
      echo "runner ID:  " . $row["runner_id"] . "\n";
      echo "date out:  " . $row["date_out"] . "\n";
      echo "date in: " . $row["date_in"] . "\n"; 
      echo "transit method: " . $row["method"] . "\n"; 
      echo "product name: " . $row["product_type"] . "\n"; 
      echo "total amount: " . $row["collected"] . "\n"; 
      echo "product quantity: " . $row["quantity"] . "\n"; 
    }
  } else {
    echo "0 results";
  }
// user input = b  
} else if ($user_input == 'b') {
  $runner_id = readline("Enter runner id: ");
  
  $sql = "CALL runner_out('$runner_id')";
    
  $result = $conn->query($sql);
  // Print the results as a table using echo
  if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
      echo "\nLogged in as runner #" . $row["runner_id"] . "\n\n";
      echo "product quantity:  " . $row["quantity"] . "\n";
      echo "product name:  " . $row["product_type"] . "\n";
      echo "transit method:  " . $row["method"] . "\n";
      echo "total amount:  " . $row["collect"] . "\n";
    }
  } else {
    echo "0 results";
  }
  
// user input != a || b
} else {
  echo "0 results";
}
$conn->close();
?>
