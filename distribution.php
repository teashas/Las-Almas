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

//$manager_id = readline("Enter employee ID: ");
$customer_id = readline("Enter customer ID: ");
$first_name = readline("Enter customer first name: ");
$last_name = readline("Enter customer last name: ");
$address = readline("Enter customer address: ");
$phone_number = readline("Enter customer number: ");

$sql = "CALL insertCustomer('$customer_id', '$first_name', '$last_name', '$address', '$phone_number')";

$result = $conn->query($sql);
// Print the results as a table using echo
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        //echo "\nLogged in as manager #" . $row["manager_id"] . "\n";
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

$conn->close();
?>
