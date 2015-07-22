void setup() {
  size(1000, 600, P2D);
  smooth();
  
  //add buttons to canvas
  buttonSetup();
  
  // load two fonts to use
  main = loadFont("SansSerif-16.vlw");
  small = loadFont("SansSerif-12.vlw");
  
  
  // set a time default if in debug mode

  //time = 1359417602 * 10000000;

  birdarea();
  
  
  println(birdlat + "" + birdlong);
  Location birdLocation = new Location(birdlat, birdlong);
  // define our map providors
  provider1 = new Google.GoogleMapProvider();
  provider2 = new ThunderforestProvider.Transport();
  provider3 = new OpenStreetMap.OpenStreetMapProvider();
 

  // Create interactive map centered around London
  map = new UnfoldingMap(this, provider2);
  MapUtils.createDefaultEventDispatcher(this, map);
  
  // settting for map
  map.setTweening(true);
  float maxPanningDistance = 20; // in km
  
  if (dublin){
  mapLocation = dublinLocation;
  } else {
    mapLocation = birdLocation;
    time = 1246349909 * 10000000;
    birds();
    birdpos();
  }
  
  map.setPanningRestriction(mapLocation, maxPanningDistance);
    map.setZoomRange(11, 15);
    map.zoomAndPanTo(mapLocation, 11);
  
  
  //Unfolding Map Elements
  debugDisplay = new DebugDisplay(this, map);
  PImage compassImg = loadImage("ui/compass_white.png");
  compass = new CompassUI(this, map, compassImg, width - 45, height - 140);
  barscale = new BarScaleUI(this, map, width - 35, height - 10);
  

  println("reading data");
  Table busDataCSV = loadTable(busDataFile);
  println("Loaded ");
}
