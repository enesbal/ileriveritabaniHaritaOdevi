<?php
//db baglanti
$con = mysqli_connect("localhost","root","","harita");
/*
if($con){
    echo "bad";
}*/

if (mysqli_connect_errno())
{
    echo "MySQL bağlantısı başarısız: " . mysqli_connect_error();
}
/*
// veri ekleme
$sqlekle = "INSERT INTO `il`(`il_plaka_kodu`, `il_adi`) VALUES (1,'Adana')";
$sonuc = mysqli_query($con,$sqlekle);
if($sonuc == 0)
    echo "olmadi kardes";
*/




$sql ="SELECT il_plaka_kodu, il_adi, asText(polygon) as polygon FROM il WHERE il_plaka_kodu=17";
$result = $con->query($sql);

if($result->num_rows > 0){

    while($row = $result->fetch_assoc()){
        $json2 = $row["polygon"];
    }
}else {
    echo "Hic kayit yok!";
}


$json = json_encode($json2);
echo $json;



?>