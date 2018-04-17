<?php

$con = mysqli_connect("localhost","root","","harita");

if (mysqli_connect_errno())
{
    echo "MySQL bağlantısı başarısız: " . mysqli_connect_error();
}

$sql ="SELECT il_plaka_kodu, il_adi, asText(polygon) as polygon FROM il WHERE il_plaka_kodu=17";
$result = $con->query($sql);

if($result->num_rows > 0){

    while($row = $result->fetch_assoc()){
        $jsonicin = "{\"".$row["il_plaka_kodu"].",\"".$row["polygon"]."\"";
        $json2 = $row["polygon"];
    }
}else {
    echo "Hic kayit yok!";
}


$json = json_encode($json2);

//echo "<a id='polygonJson'>".$json."</a>";


?>