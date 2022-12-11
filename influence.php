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
echo "You are in the Influence database." . "\n";
$user_input = readline("Select a to view table; b to insert new client: ");

// user inputs a 
if ($user_input == 'a') {
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
      echo "production date:  " . $row["production_date"] . "\n\n";
      echo "customer ID:  " . $row["customer_id"] . "\n";
      echo "first name:  " . $row["first_name"] . "\n";
      echo "last name:  " . $row["last_name"] . "\n";
      echo "address:  " . $row["address"] . "\n";
      echo "phone number:  " . $row["phone_number"] . "\n";
    }
  } else {
    echo "0 results";
  }
// user input = b  
} else if ($user_input == 'b') {
  $customer_id = readline("Enter customer ID: ");
  $first_name = readline("Enter customer first name: ");
  $last_name = readline("Enter customer last name: ");
  $address = readline("Enter customer address: ");
  $phone_number = readline("Enter customer phone number: ");
  
  $sql = "CALL insertCustomer('$customer_id', '$first_name', '$last_name', '$address', '$phone_number')";
  
  if (!($result = $conn->query($sql))) {
    echo "failed" . $conn->error. "\n";
  } 
  // Print the results as a table using echo
  if ($result->num_rows > 0) {
      while ($row = $result->fetch_assoc()) {
          echo "\nNew client added to database. \n";
          echo "customer ID:  " . $row["customer_id"] . "\n";
          echo "first name:  " . $row["first_name"] . "\n";
          echo "last name:  " . $row["last_name"] . "\n";
          echo "address:  " . $row["address"] . "\n";
          echo "phone number:  " . $row["phone_number"] . "\n";
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
