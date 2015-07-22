

// Unfolding and controlp5 libraries need to be installed
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.*;
import controlP5.*;
import de.fhpotsdam.unfolding.ui.*; 
import de.fhpotsdam.unfolding.data.*; 
import de.fhpotsdam.unfolding.marker.*; 


// import some other java libraries
import java.util.ArrayList;
import java.util.List;
import java.util.Date;
import java.util.Date.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.TimeZone;


// for birds file
import de.bezier.data.sql.*;
SQLite db;
float birdlat;
float birdlong;

// set to true to show debug window and extra log messages
Boolean debug = false;

// font's and images
PFont main;
PFont small;

// variable for current time
long time ;
//time = 1359417602* 1000 * 1000;
// how much the time increments by when changing
long timeChange = 60000000L;
// increase amount for the time change set by the radius slider
float speed;


String busDataFile = "siri.20130129.csv";
ArrayList<Bus> busList = new ArrayList();

// define button variables
ControlP5 cp5; 
RadioButton r;

// map variables
UnfoldingMap map;
DebugDisplay debugDisplay;
Location dublinLocation = new Location(53.347, -6.266);
Location mapLocation;
AbstractMapProvider provider1;
AbstractMapProvider provider2;
AbstractMapProvider provider3;
CompassUI compass;
BarScaleUI barscale;
ArrayList<Integer> birds = new ArrayList();



boolean dublin = false;







