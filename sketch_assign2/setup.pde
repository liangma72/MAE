void setup() {
  size(800, 600, P2D);
  smooth();
  buttonSetup();

  // Create interactive map centered around London
  map = new UnfoldingMap(this, new Google.GoogleMapProvider());
  //map.zoomAndPanTo(11, new Location(53.3478, -6.2597));
  MapUtils.createDefaultEventDispatcher(this, map);
  map.setTweening(true);
  
  
  float maxPanningDistance = 20; // in km
  
  map.setPanningRestriction(dublinLocation, maxPanningDistance);
  map.setZoomRange(11, 15);
  map.zoomAndPanTo(dublinLocation, 12);
  
  
  debugDisplay = new DebugDisplay(this, map);
  
  println("reading data");
  Table busDataCSV = loadTable(busDataFile);
  println("data in");
  busDataCSV.sortReverse(5);
  println("sorted");
  for (TableRow busRow : busDataCSV.rows()) {
    println(busRow.getInt(5));
  }
  /*
  
  //println(busDataCSV.getColumnTypes() );
  for (TableRow busRow : busDataCSV.rows()) {
    // Create new empty object to store data
    Bus busloc = new Bus();
    //println(busRow);

    // Read data from CSV
    busloc.Lineid = busRow.getInt(1);
    busloc.journeyid = busRow.getInt(5);
    
    float lat = busRow.getFloat(8);
    float lng = busRow.getFloat(9);
    
    
    busloc.timestamplist.add(busRow.getInt(0));
    busloc.locationlist.add(new Location(lat, lng));

    // Add to list of all bike stations
    busList.add(busloc);

  }
  */

  println("Loaded ");
}

