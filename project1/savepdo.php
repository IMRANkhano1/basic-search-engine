<?php
include "configpdo.php";
session_start(); 
$iid=$_SESSION['userid']; 
$keyword=$_POST['search'];
$Name = $_POST['search'];
$sql = 'SELECT * FROM searchpro WHERE name = :wname';
$que="INSERT INTO save(user_id,keywords) VALUES(:iid,:keyword)";   

if(isset($_POST['search'])) {

  
    $stmt = $conn->prepare($que);
    $stmt->bindParam(':iid', $iid, PDO::PARAM_INT);
    $stmt->bindParam(':keyword', $keyword, PDO::PARAM_STR);
    $stmt->execute();
    // echo "<script>alert('data stored');
    // window.location.href='bootstrap.php';</script>;";
      $stmt = $conn->prepare($sql);
    $stmt->execute([':wname' => $Name]);
    $row = $stmt->fetch();
  }
  else
  {
    header('location: .');
    exit();
  }
  

?>
 

    
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Details</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css">
</head>

<body>
  <div class="container">
    <div class="row mt-5">
      <div class="col-5 mx-auto">
        <div class="card shadow text-center">
          <div class="card-header">
            <!-- <h1><?= $row['id'] ?></h1>  -->
          </div>
          <div class="card-body">
            <h4><b>Name :</b> <?= $row['name'] ?></h4>
            <h4><b>Place :</b> <?= $row['location'] ?></h4>
            <h4><b>Details :</b> <?= $row['About'] ?></h4>
            <!-- <h4><b>About :</b> <?= $row['id'] ?></h4> -->
          </div>
          <div class="form-group">
            <a href="bootstrap.php" class="btn btn-success" name="submit">back</a>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>
