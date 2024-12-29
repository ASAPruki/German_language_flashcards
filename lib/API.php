<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

$host = "fdb1029.awardspace.net";
$username = "4564662_id12231816";
$password = "99Vm6tBhw";
$dbname = "4564662_id12231816";

$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die(json_encode(["error" => "Database connection failed: " . $conn->connect_error]));
}

$action = isset($_GET['action']) ? $_GET['action'] : '';

switch ($action) {
    case 'random':
        fetchRandomWord($conn);
        break;

    case 'add':
        addNewWord($conn);
        break;

    default:
        echo json_encode(["error" => "Invalid action"]);
        break;
}


function fetchRandomWord($conn)
{
    $sql = "SELECT * FROM words ORDER BY RAND() LIMIT 1";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        $word = $result->fetch_assoc();
        echo json_encode($word);
    } else {
        echo json_encode(["error" => "No words found in the database"]);
    }
}


function addNewWord($conn)
{

    $germanWord = isset($_POST['german_word']) ? $_POST['german_word'] : '';
    $translation = isset($_POST['translation']) ? $_POST['translation'] : '';

    if (empty($germanWord) || empty($translation)) {
        echo json_encode(["error" => "Both German word and translation are required"]);
        return;
    }


    $sql = "INSERT INTO words (german_word, translation) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $germanWord, $translation);

    if ($stmt->execute()) {
        echo json_encode(["success" => "Word added successfully"]);
    } else {
        echo json_encode(["error" => "Failed to add word: " . $stmt->error]);
    }

    $stmt->close();
}


$conn->close();
