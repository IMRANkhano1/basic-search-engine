
<!DOCTYPE html>
<head> 
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

	
 </head>
 
<body>
      <div class="container my-5">
          <div class="row"> 
          	<div class="col-4">
          		<table class="table table-bordered">
          	<tr><th class="bg-primary text-center">History</th></tr>

 <?php
include "configpdo.php";
session_start();
$uid = $_SESSION['userid'];

$stmt = $conn->prepare("SELECT * FROM save WHERE user_id=:uid GROUP BY id DESC");
$stmt->bindParam(':uid', $uid);
$stmt->execute();

while ($row = $stmt->fetch(PDO::FETCH_ASSOC))
 {
    echo "<tr><td>" . $row['keywords'] . "</td></tr>";
  }

?>


          			
    </table>
</div>
</div>
</div>
</body>
</html>
