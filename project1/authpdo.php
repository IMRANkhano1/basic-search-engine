<?php
include"configpdo.php";
session_start();

$user = $_POST['userid'];
$pa = $_POST['pass'];
$_SESSION['userid'] = $user;

$query = "SELECT * FROM auth WHERE userid = :userid1";

$stmt = $conn->prepare($query);
$stmt->bindParam(':userid1', $user);
$stmt->execute();
if ($row = $stmt->fetch(PDO::FETCH_ASSOC))
 {
    if ($row['pass'] == $pa)
     {
        echo "<script>alert('login successful'); window.location.href='bootstrap.php';</script>";
    } 
    else 
    {
        echo "<script>alert('invalid password'); window.location.href='login.php';</script>";
    }
} 
else
 {
    echo "<script>alert('invalid id'); window.location.href='login.php';</script>";
}
?>
