<?php
$dbuser = 'postgres';
$dbpass = 'Listar17102003';
$host = 'localhost';
$dbname = 'students';
$pdo = new PDO("pgsql:host=$host;dbname=$dbname", $dbuser, $dbpass);

if (isset($_POST['enter'])) {
    $studentID = $_POST['student_id'];
    $newGroupNumber = $_POST['group_number'];

    // Получение старого значения group_number
    $selectQuery = "SELECT group_number FROM students.students WHERE student_id = :student_id";
    $stmt = $pdo->prepare($selectQuery);
    $stmt->bindValue(':student_id', $studentID);
    $stmt->execute();
    $oldGroupNumber = $stmt->fetchColumn();

    echo "
        student_id: $studentID
        <br>
        group_number (old): $oldGroupNumber
        <br>
        group_number (new): $newGroupNumber
        <br>
        <br>
    ";

    // Обновление значения group_number
    $updateQuery = "UPDATE students.students SET group_number = :new_group_number WHERE student_id = :student_id";
    $stmt = $pdo->prepare($updateQuery);
    $stmt->bindValue(':new_group_number', $newGroupNumber);
    $stmt->bindValue(':student_id', $studentID);
    $stmt->execute();

    echo "<b>Student group was updated!</b><br>";
}
?>