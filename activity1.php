<?php
// Database connection settings
$servername = "localhost";
$username = "root"; // Update with your database username
$password = ""; // Update with your database password
$dbname = "geno"; // Update with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the form data
    $num1 = mysqli_real_escape_string($conn, $_POST['num1']);
    $num2 = mysqli_real_escape_string($conn, $_POST['num2']);
    $num3 = mysqli_real_escape_string($conn, $_POST['num3']);
    $num4 = mysqli_real_escape_string($conn, $_POST['num4']);
    $num5 = mysqli_real_escape_string($conn, $_POST['num5']);
    $num6 = mysqli_real_escape_string($conn, $_POST['num6']);
    $num7 = mysqli_real_escape_string($conn, $_POST['num7']);
    $num9 = mysqli_real_escape_string($conn, $_POST['num9']);

    // Debugging: Print the form data to check if it's being received
    echo "Form data received:<br>";
    echo "num1: $num1<br>";
    echo "num2: $num2<br>";
    echo "num3: $num3<br>";
    echo "num4: $num4<br>";
    echo "num5: $num5<br>";
    echo "num6: $num6<br>";
    echo "num7: $num7<br>";
    echo "num9: $num9<br>";

    // SQL query to insert the data into the database
    $sql = "INSERT INTO activity (num1, num2, num3, num4, num5, num6, num7, num9) 
            VALUES ('$num1', '$num2', '$num3', '$num4', '$num5', '$num6', '$num7', '$num9')";

    // Check if query executed successfully
    if ($conn->query($sql) === TRUE) {
        echo "Activities saved successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Close the connection
    $conn->close();
}
?>
