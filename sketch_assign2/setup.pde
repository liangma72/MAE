void setup() {
  size(1000, 600, P2D);
  smooth();
  buttonSetup();
  main = loadFont("SansSerif-16.vlw");
  small = loadFont("SansSerif-12.vlw");
  
  if (debug) {
  time = 1359417602000000L;
  
  }
  
  // define our map providors
  provider1 = new Google.GoogleMapProvider();
  provider2 = new ThunderforestProvider.Transport();
  provider3 = new OpenStreetMap.OpenStreetMapProvider();
 

  // Create interactive map centered around London
  map = new UnfoldingMap(this, provider2);
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
  println("Loaded ");
}
