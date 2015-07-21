// Display bus movement per day in dublin
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.*;
import controlP5.*;
import de.fhpotsdam.unfolding.ui.*; 

// set to true to show debug window and extra log messages
Boolean debug = false;
AbstractMapProvider provider1;
AbstractMapProvider provider2;
AbstractMapProvider provider3;
CompassUI compass;
BarScaleUI barscale;



String busDataFile = "siri.20130129.csv";

UnfoldingMap map;
DebugDisplay debugDisplay;
Location dublinLocation = new Location(53.347, -6.266);

ArrayList<Bus> busList = new ArrayList();
ControlP5 cp5; 






