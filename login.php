<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Database credentials
    $host = "localhost";
    $dbUsername = "root";
    $dbPassword = "";
    $dbName = "geno";

    // Create database connection
    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get form data safely
    $username = $_POST['username'] ?? '';
    $email = $_POST['email'] ?? '';
    $password = $_POST['password'] ?? '';

    // Validate inputs
    if (empty($username) || empty($email) || empty($password)) {
        echo "All fields are required.";
        exit();
    }

    // Prepare and execute SQL query
    $stmt = $conn->prepare("SELECT * FROM signup WHERE username = ? AND email = ?");
    $stmt->bind_param("ss", $username, $email);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if user exists
    if ($result && $result->num_rows === 1) {
        $user = $result->fetch_assoc();

        // Verify the password using password_verify()
        if (password_verify($password, $user['password'])) {
            echo "Login successful!";
            // You can redirect or start session here if needed
            // header("Location: order.html");
            // exit();
        } else {
            echo "Incorrect password.";
        }
    } else {
        echo "User not found or email doesn't match.";
    }

    // Close connection
    $stmt->close();
    $conn->close();
} else {
    echo "Invalid request method.";
}
?>
