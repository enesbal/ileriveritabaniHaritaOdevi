<?php

    require_once(connecDb.php);

    header('Content-Type: text/html; charset=utf-8');
    $parkId = $_POST['parkId'];

    $sql ="SELECT park_adi, latitude, longitude  FROM parklar WHERE parkId==1";
    $result = $con->query($sql);





    if($result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            echo "İl adi: ".$row["il_adi"]." Plaka Kodu: ".$row["il_plaka_kodu"]."<br>";
        }
    }else {
        echo "Hic kayit yok!";
    }




    echo $isim_degiskeni." adlı bir veri gönderdiniz";


?>