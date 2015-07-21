/*
 * Bike Map showing all Cycle Hire stations and their available bikes.
 *
 * Example shows how to load and display CSV data. Shows bike stations directly (i.e. without markers)
 *
 * Created for Unfolding workshop at Royal College of Art.
 * (c) 2014 Till Nagel, tillnagel.com
 */ 
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;

//String bikeAPIUrl = "http://api.bike-stats.co.uk/service/rest/bikestats?format=csv";
String busDataFile = "siri.20130129.csv"; // in case URL goes down
//String bikeDataFile = bikeFile;

UnfoldingMap map;

ArrayList<Bus> busList = new ArrayList();


void setup() {
  size(800, 600, P2D);
  smooth();

  // Create interactive map centered around London
  map = new UnfoldingMap(this);
  map.zoomAndPanTo(12, new Location(51.500, -0.118));
  MapUtils.createDefaultEventDispatcher(this, map);
  map.setTweening(true);
  
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



