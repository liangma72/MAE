void setup() {
  size(1000, 600, P2D);
  smooth();
  buttonSetup();
  
  // define our map providors
  provider1 = new Google.GoogleMapProvider();
  provider2 = new ThunderforestProvider.Transport();
  provider3 = new OpenStreetMap.OpenStreetMapProvider();
 

  // Create interactive map centered around London
  map = new UnfoldingMap(this, provider2);
  //map.zoomAndPanTo(11, new Location(53.3478, -6.2597));
  MapUtils.createDefaultEventDispatcher(this, map);
  map.setTweening(true);
  
  
  float maxPanningDistance = 20; // in km
  
  map.setPanningRestriction(dublinLocation, maxPanningDistance);
  map.setZoomRange(11, 15);
  map.zoomAndPanTo(dublinLocation, 11);
  
  
  debugDisplay = new DebugDisplay(this, map);
  
  PImage compassImg = loadImage("ui/compass_white.png");
  compass = new CompassUI(this, map, compassImg, width - 45, height - 140);
  barscale = new BarScaleUI(this, map, width - 35, height - 10);

  println("reading data");
  Table busDataCSV = loadTable(busDataFile);
  println("data in");
  busDataCSV.sortReverse(5);
  println("sorted");
  //for (TableRow busRow : busDataCSV.rows()) {
    //println(busRow.getInt(5));
  //}
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

/*
void buslines(){
List<Feature> transitLines = GeoJSONReader.loadData(this, "busnetwork.json");
//List<Marker> transitMarkers = new ArrayList<Marker>();

List<Marker> markers = MapUtils.createSimpleMarkers(transitLines);
map.addMarkers(markers);

   // map.addMarkers(transitMarkers);
} */
