<?php

$databaseHost = 'localhost';
$databaseName = 'ItemCheck';
$databaseUsername = 'root';
$databasePassword = '';

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style2.css">
    <title>Document</title>
    
</head>
<body>
    <main>
        <div class = "main">
            <h1 class="header">Informasi Barang</h1>
             <form class = "form_aja" action = "formbarang.php" method = "GET">
                 <input type="text" name="KodeBarang" placeholder="Kode Barang">
                <button name="submit">Lihat Barang</button >
            </form>
        </div>
    </main>

    
<?php

$databaseHost = 'localhost';
$databaseName = 'ItemCheck';
$databaseUsername = 'root';
$databasePassword = '';

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
if (mysqli_connect_errno()) {
    die("Failed to connect to db: " . mysqli_connect_error());
  }


if(isset($_GET['KodeBarang'])) {
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
    $kodebarang = $_GET['KodeBarang'];

    // include database connection file
    include "ConnectDatabase.php";

    $query1 = "insert into Input values ('$kodebarang')";
    $result1 = mysqli_query($mysqli, $query1);
    mysqli_close($mysqli);  
    }

?>

    <div class="tabel">
    <table id="myTable">
        <tr class="header2">
          <th style="width:25%;">ID Barang</th>
          <th style="width:25%;">Nama Barang</th>
          <th style="width:25%;">Harga Barang</th>
          <th style="width:25%;">Stok Barang</th>
        </tr>   
      </table>
    </div>

        <br>

        <?php
        // Create database connection using config file
        include_once("ConnectDatabase.php");
    
        $databaseHost = 'localhost';
        $databaseName = 'ItemCheck';
        $databaseUsername = 'root';
        $databasePassword = '';
    
        $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
    
    
        $query = 'SELECT itemdetail.ItemID, itemdetail.ItemName, itemdetail.ItemPrice, itemdetail.ItemQty 
            FROM itemdetail join input on itemdetail.ItemID = input.InputCode        
            ';
        $result = mysqli_query($mysqli, $query);
        if (!$result) {
            printf("Error: %s\n", mysqli_error($mysqli));
            exit();

        }
    
        while($user_data = mysqli_fetch_array($result)) {      
           echo "<div class='hasil'>";
            echo "<div class='p1'>"."<th>".$user_data['ItemID']."</th>"."</div>";
            echo "<div class='p1'>"."<th class='p1'>".$user_data['ItemName']."</th>"."</div>";
            echo "<div class='p1'>"."<th class='p1'>".$user_data['ItemPrice']."</th>"."</div>";    
            echo "<div class='p1'>"."<th class='p1'>".$user_data['ItemQty']."</th>"."</div>";
            echo "</div>";
     
           }
        



        $query2 = 'DELETE FROM input';
        $result3 = mysqli_query($mysqli, $query2);

        ?>

</body>
</html>