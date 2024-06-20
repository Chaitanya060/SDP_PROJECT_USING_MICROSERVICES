<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {
        "packages":["map"],
        // Note: you will need to get a mapsApiKey for your project.
        // See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
        "mapsApiKey": "AIzaSyAqQlzRmarT_4rXvvHTG0zA06pDaI77zaA" // provide you map API Ley
      });
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Lat', 'Long', 'Name'],
          [16.5062, 80.6480,'Vijayawada'],
          [16.3067, 80.4365, 'Guntur'],
          [16.4419, 80.6226, 'KLU'],
        ]);
        var map = new google.visualization.Map(document.getElementById('map_div'));
        map.draw(data, {
          showTooltip: true,
          showInfoWindow: true
        });      }
    </script>
  </head>
  <body>
    <div id="map_div" style="width: 800px; height: 700px"></div>
  </body>
</html>