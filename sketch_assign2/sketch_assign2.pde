

// Display bus movement per day in dublin
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.*;
import controlP5.*;
import de.fhpotsdam.unfolding.ui.*; 
import de.fhpotsdam.unfolding.data.*; 
import de.fhpotsdam.unfolding.marker.*; 

import java.util.ArrayList;
import java.util.List;
import java.util.Date;
import java.util.Date.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
import TUIO.*;

// set to true to show debug window and extra log messages
Boolean debug = true;
AbstractMapProvider provider1;
AbstractMapProvider provider2;
AbstractMapProvider provider3;
CompassUI compass;
BarScaleUI barscale;

PFont main;
PFont small;
long time;



String busDataFile = "siri.20130129.csv";

UnfoldingMap map;
DebugDisplay debugDisplay;
//TuioCursorHandler tuioCursorHandler;
Location dublinLocation = new Location(53.347, -6.266);

ArrayList<Bus> busList = new ArrayList();
ControlP5 cp5; 
RadioButton r;






