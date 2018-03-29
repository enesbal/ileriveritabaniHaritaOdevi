<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="odev.WebForm1" %>

<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <style>
       #map {
        height: 400px;
        width: 400px;
       }
       body {
            background-color:antiquewhite;
            margin-top:50px;
                
       }
       #icerik{
           width:80%;
           margin:auto;
       }
       .harita {
           float:left;
       }
       .oylar{
           float:left;
           margin-top:50px;
           margin-left:50px;
       }

    </style>
    <script>
            
        function buttonOnClick(lati, lngt) {
            initMap(lati, lngt);

            

        }

        function initMap(lati, lngt) {
            if (lati == null && lngt == null) {
                uluru = { lat: 40.1415605, lng: 26.4217299 };
            }
            uluru = { lat: lati, lng: lngt };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 13,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });
        }

        function location(lang, long) {
            var mapChange = n
        }
    </script>
  </head>
  <body>
      <div id="icerik">
          
            <h3>Hangi bölgenin oy oranını görmek istiyorsunuz?</h3>
          <div class="harita">

            <div id="map"></div>

            <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyArmQVmXsp_OjSxM8V76HSgAszg9biaEYU&callback=initMap">
            </script>   

            <button onclick="initMap(40.1415605,26.4217299)" class="btn btn-primary"> Çanakkale </button>
            <button onclick="initMap(38.419206, 27.129146)" class="btn btn-primary"> İzmir </button>
            <button onclick="initMap(41.020526, 29.028623)" class="btn btn-primary"> İstanbul </button>
            <button onclick="initMap(39.927451, 32.781982)" class="btn btn-primary"> Ankara </button>

          </div>
            <div class="oylar">
                <h1>Oy Oranları</h1>
                <h3 class="aParti">A partisi: 45%</h3>
                <h3 class="bParti">B partisi: 25%</h3>
                <h3 class="Parti">C partisi: 30%</h3>
            </div>
      </div>

  </body>
</html>

