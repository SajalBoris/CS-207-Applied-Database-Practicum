<?php
session_start();
?>
<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
  <title>ADA Shops Near You</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  
<style>
  /* Always set the map height explicitly to define the size of the div
   * element that contains the map. */
  #map {
    height: 100%;
  }
  /* Optional: Makes the sample page fill the window. */
  html, body {
    height: 100%;
    margin: 0;
    padding: 0;
  }
</style>
</head>
<body style="margin:0px; padding:0px;" onload="initMap()">
  <!--<div>
       <!--<label for="raddressInput">Search location:</label>
       <input type="text" id="addressInput" size="15"/>
      <label for="radiusSelect">Radius:</label>
      <select id="radiusSelect" label="Radius">
        <option value="50" selected>50 kms</option>
        <option value="30">30 kms</option>
        <option value="20">20 kms</option>
        <option value="10">10 kms</option>
      </select>-->

      <!--<input type="button" id="searchButton" value="Search"/>
  </div>-->
  <div><select id="locationSelect" style="width: 10%; visibility: hidden"></select></div>
  <div id="map" style="width: 100%; height: 90%"></div>
  <script>
    var map;
    var markers = [];
    var infoWindow;
    var locationSelect;
    var lat;
    var lng;
    function getLocation() 
    {
      if (navigator.geolocation) 
      {
        navigator.geolocation.getCurrentPosition(showPosition);
      } 
      else 
      {
        alert("Geolocation is not supported by this browser.");
      }
    }
    function showPosition(position) 
    {
      lat = position.coords.latitude;
      lng = position.coords.longitude;
      //document.getElementById('lat').value = lat;
      //document.getElementById('lng').value = lng;
      //map.setCenter(new google.maps.LatLng(lat, lng));
    }
      function initMap() 
      { 
        getLocation();
       // var sydney = {lat: -33.863276, lng: 151.107977};
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat:lat , lng:lng},
          //center: sydney,
          zoom: 16,
          mapTypeId: 'roadmap',
          mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU}
        });
        infoWindow = new google.maps.InfoWindow();
        //searchButton = document.getElementById("searchButton").onclick = searchLocations;
        window.onload = searchLocations;
        locationSelect = document.getElementById("locationSelect");
        locationSelect.onchange = function() {
          var markerNum = locationSelect.options[locationSelect.selectedIndex].value;
          if (markerNum != "none"){
            google.maps.event.trigger(markers[markerNum], 'click');
          }
        };
      }
      
     function searchLocations() 
     {
      //var sydney = {lat: -33.863276, lng: 151.107977};
      //searchLocationsNear(sydney);
      searchLocationsNear();
      /* var address = document.getElementById("addressInput").value;
       var geocoder = new google.maps.Geocoder();
       geocoder.geocode({address: address}, function(results, status) {
         if (status == google.maps.GeocoderStatus.OK) {
          searchLocationsNear(results[0].geometry.location);
         } else {
           alert(address + ' not found');
         }
       });*/
     }
     function clearLocations() {
       infoWindow.close();
       for (var i = 0; i < markers.length; i++) {
         markers[i].setMap(null);
       }
       markers.length = 0;
       locationSelect.innerHTML = "";
       var option = document.createElement("option");
       option.value = "none";
       option.innerHTML = "See all results:";
       locationSelect.appendChild(option);
     }
     function searchLocationsNear() 
     {
         
         radius = 13; ///////
         //var radius = document.getElementById('radiusSelect').value;
         var searchUrl = "storelocator.php?lat=" + lat + "&lng=" + lng +"&radius=" + radius;
         //alert(searchUrl);
         downloadUrl(searchUrl, function(data) {
          //alert(data);
           var xml = parseXml(data);

           var markerNodes = xml.documentElement.getElementsByTagName("marker");
           var bounds = new google.maps.LatLngBounds();
           //alert(markerNodes.length);
          if(markerNodes.length > 0)
          {
            //alert(markerNodes.length);
            clearLocations();
           for (var i = 0; i < markerNodes.length; i++) 
           {
            // alert("yay");
               var id = markerNodes[i].getAttribute("id");
               var name = markerNodes[i].getAttribute("name");
               var address = markerNodes[i].getAttribute("address");
               var distance = parseFloat(markerNodes[i].getAttribute("distance"));
               var latlng = new google.maps.LatLng(
                    parseFloat(markerNodes[i].getAttribute("lat")),
                    parseFloat(markerNodes[i].getAttribute("lng")));
               createOption(name, distance, i);
               createMarker(latlng, name, address , id);
               bounds.extend(latlng);
           }
          
           // Iterate the markers array
            markers.forEach(function(marker)
            {
              // Set up a click event listener for each marker in the array
              marker.addListener('click', function() {
                //window.location.href = "searchOnStore.php?id=" + id;
              });
            });
           map.fitBounds(bounds);
           locationSelect.style.visibility = "visible";
           locationSelect.onchange = function() {
             var markerNum = locationSelect.options[locationSelect.selectedIndex].value;
             google.maps.event.trigger(markers[markerNum], 'click');
           };}
         });
        
     }
     function createMarker(latlng, name, address, id) 
     {
       //alert("creating cats");
        var html = "<b>" + name + "</b> <br/>" + address;
        var marker = new google.maps.Marker({
          map: map,
          position: latlng
        });
        google.maps.event.addListener(marker, 'click', function() 
        {
          
          infoWindow.setContent(html);
          infoWindow.open(map, marker);
          //alert("searchOnStore.php?id=" + id);
          var link = "customerItemsDisplay.php?id=" + id;
          window.location.href = link;
          //this.setIcon(activeicon);
          iAmSelected(id);
        });
        markers.push(marker);
      }
     function createOption(name, distance, num) 
     {
        var option = document.createElement("option");
        option.value = num;
        option.innerHTML = name;
        locationSelect.appendChild(option);
     }
     function downloadUrl(url, callback) 
     {
       //alert("Downlaoding url" + url);
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest();
        request.onreadystatechange = function() 
        {
          if (request.readyState == 4) 
          {
            request.onreadystatechange = doNothing();
            //alert("response text"+request.responseText);
            callback(request.responseText, request.status);
          }
        };
        request.open("GET", url, true);
        request.send();

     }
     function parseXml(str) 
     {
        if (window.ActiveXObject) 
        {
          var doc = new ActiveXObject('Microsoft.XMLDOM');
          doc.loadXML(str);
          return doc;
        } 
        else if (window.DOMParser) 
        {
          return (new DOMParser).parseFromString(str, 'text/xml');
        }
     }
     ////////// MY FUNCTIONS
     function iAmSelected()
     {
      //window.location = "https://www.google.co.in";
      //alert(id);
      window.location = ("customerItemsDisplay.php?id=" + id);
     }
     function doNothing() {}
</script>
  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDZqiCbne6zbtzeJfQFy000TlCcYpIGUiU&callback=initMap">
  </script>
</body>
</html>