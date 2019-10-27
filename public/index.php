<?php

#instead of localhost we put mysql as host_name
$conn = new mysqli("mysql", "root", ".sweetpwd.", "my_db");
// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}
 
$sql = "SELECT name FROM users";
$result = $conn->query($sql);
 
if ($result->num_rows > 0) {
	// output data of each row
	while($row = $result->fetch_assoc()) {
		echo $row['name']."&lt;br>";
	}
} else {
	echo "0 results";
}
$conn->close();
