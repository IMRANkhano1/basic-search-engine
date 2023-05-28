<?php
$server="localhost";
$uname="root";
$psw="";
$db="cs";
  try {
    $conn=new PDO("mysql:host=$server;dbname=$db",$uname,$psw);

    $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
  } catch (PDOException $e) {
    die('Error : ' . $e->getMessage());
  }
?>