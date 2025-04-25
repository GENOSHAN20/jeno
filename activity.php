<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    echo "<h2>Your Usual Activities:</h2>";
    echo "<ul>";
    for ($i = 1; $i <= 8; $i++) {
        $activity = htmlspecialchars($_POST["activity$i"] ?? '');
        if (!empty($activity)) {
            echo "<li>$activity</li>";
        }
    }
    echo "</ul>";
} else {
    echo "No data submitted.";
}
?>
